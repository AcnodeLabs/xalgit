with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;


package body AdaApp is

   voyager : GameObject;
   panel   : GameObject;
   star    : GameObject;
   cockpit : GameObject;

   NUMSTARS: constant int := 350;

   type pos_array is array (1..NUMSTARS) of Position;
   starpos : pos_array;

   planets : array (0..8) of GameObject;
   planet_size : array (0..8) of Float := (4880.0,7500.0,7500.0,4444.0,9900.0,9500.0,8000.0,8000.0,4880.0);--Moon:=,2274.0);
   planet_tga  : array (0..8) of chars_ptr := (
                                             New_String("mercury4k.tga"),
                                             New_String( "venus4_rgb_cyl_www.tga"),
                                             New_String("earth4k.tga"),
                                             New_String("mars4k.tga"),
                                             New_String("jupiter_rgb_cyl_www.tga"),
                                             New_String("saturn.tga"),
                                             New_String("uranus.tga"),
                                             New_String("neptune.tga"),
                                             New_String("pluto.tga")
                                            );

   sc : float := 0.7  * 0.0001;
   planetNo : Integer := 0;
   iUnassigned : constant Int := -1;

   screenX  : Int := iUnassigned;
   screenY  : Int := iUnassigned;

   rGen : Generator;

   function incAnim(animstep: in out Float ) return Float is
      begin
      if animstep=0.0 then CTimed.Set(0.0,1.0,0.2,animStepTimed); CTimed.ReDo(animStepTimed); end if;
      animstep := StepLinear(deltaT, animStepTimed);
   return animstep;
   end incAnim;


   procedure Init is
      use Ada.Numerics.Float_Random;
   begin

      voyager.modelId := 0;
      voyager.scale := 0.015;
      alLoadModel(New_String("voyager2.alx") , New_String("voyager2.tga") , int(voyager.modelId) , C_float(voyager.scale));

      panel.modelId := 1;
      alLoadModel(New_String("misc.alx")       , New_String("misc.tga")        , int(panel.modelId) , 1.0);

      cockpit.modelId := 2;
      alLoadModel(New_String("rect1.alx")       , New_String("cockpit_1.tga")        , int(cockpit.modelId) , 1.0);

      star.modelId := 3;
      alLoadModel(New_String("star.alx"), New_String("star.tga"), int(star.modelId), 0.3);

      for n in 0..8
        loop
        planets(n).modelId := int (4 + n);
        alLoadModel(New_String("sphere.alx")  , planet_tga(n) ,  int(planets(n).modelId), C_float(planet_size(n)*sc));
      end loop;

      Reset(rGen);

      for n in 1..NUMSTARS
      loop
         starpos(n).values.x := Random(rGen)*180.0-100.0;
         starpos(n).values.y := Random(rGen)*180.0-100.0;
         starpos(n).values.z := Random(rGen)*180.0-100.0;
   --
      end loop;



      -- Load Sounds
  --    alPushP(CMD.SNDSET, New_String("cosmos.wav"),Null_Ptr);

      Put_Line("Hit Init 5 Hotspots");
   -- https://docs.google.com/spreadsheets/d/1LnzLCQDEV4u01F0RhHSR2k0h-F8e-l5XopcBfGvRc1g/edit#gid=0
      hitBounds.Append((1, 0.32,0.40, 0.04,0.14)); --btn1
      hitBounds.Append((2, 0.42,0.49, 0.04,0.14)); --btn2
      hitBounds.Append((3, 0.51,0.59, 0.04,0.14)); --btn3
      hitBounds.Append((4, 0.60,0.68, 0.04,0.14)); --btn4
      hitBounds.Append((10, 0.4,0.6,0.3,0.7));     --planet

   end Init;

   procedure Update(dt : Interfaces.C.C_float) is
   begin
      deltaT := Float(dt);
      timeVar := timeVar + dt;
   end Update;

   procedure renderStars is
      angle1 : float := 0.0;
   begin
      angle1 := float(timeVar) * FACTOR_RADIANS_DEGREES * 1.00; -- Convert to Degrees
      for n in 1..NUMSTARS
      loop
         alBillBoardBegin;
         alDrawModelTranslateRotate(id          => star.modelId,
                                    posx        => C_float(starpos(n).values.x),
                                    posy        => C_float(starpos(n).values.y),
                                    posz        => C_float(starpos(n).values.z),
                                    angle       => 0.0,--C_float(angle1),
                                    y           => 1.0,
                                    rotatefirst => 1,
                                    billboard   => 1
                                   );
         alBillBoardEnd;
      end loop;
   end renderStars;

   procedure AnimDo is

      begin

        if nseq=0 then
         tgt.x := 0.0;
         tgt.y := 0.0;
         tgt.z := 0.0;
	 eye.x := 0.0;
	 eye.y := 0.0;
         eye.z := Float(bz);-- -alModelBounds(planets(planetNo).modelId)*0.005;
         Put_Line(eye.z'Image);
	 eyerot.z := 0.0;
	 keyframe := 1;
        end if;

         if nseq=ANIMSEQ_SURFACE and keyframe=1 then
            tgt.x := QuadraticEaseIn(animstep, 0.0, -Float(bz) * 1.02);
            tgt.y := QuadraticEaseIn(animstep, 0.0, 0.0);
            tgt.z := QuadraticEaseIn(animstep, 0.0, 0.0);
            eye.x := QuadraticEaseIn(animstep, 0.0, -Float(bz) * 1.02);
            eye.y := QuadraticEaseIn(animstep, 0.0, 0.0);
            eye.z := QuadraticEaseIn(animstep, - (-Float(bz) *5.0), -(-Float(bz)  * 1.02));
            eyerot.z := QuadraticEaseIn(animstep, 0.0, 90.0);
            animstep := incAnim(animstep);
            if animstep>1.0 then animstep:=0.0; nseq:=0; end if;
         end if;
   end AnimDo;

   procedure Render is
     angle1 : float := 0.0;
   begin
      angle1 := float(timeVar) * FACTOR_RADIANS_DEGREES ; -- Convert to Degrees

       -- draw cockpit
   --   alAlphaTest(set_unset => 0);
      -- draw cockpit
      alAlphaTest(set_unset => 1);
      alDrawModelTranslateRotate(id => cockpit.modelId );

      --set spin
      -- alTranslateRotate( angle => C_float(angle1),  y => 1.0);

      alaluLookAt(C_float(eye.x),C_float(eye.y),C_float(eye.z), 0.0,0.0,0.0, 0.0, 1.0, 0.0);


      renderStars;

      AnimDo;

      alDrawModel(id => planets(planetNo).modelId);

      alPushMatrix;
      alTranslateRotate( angle => C_float(angle1),  y => 1.0);
      alDrawModelTranslateRotate(id => voyager.modelId, posz  => 1.0, angle => 180.0,  y => 1.0);

      alPopMatrix;-- undo rotation


      -- draw panel
  --    alDrawModelTranslateRotate(id => panel.modelId, posy => 1.0, angle => 180.0, z => 1.0 );


   end Render;

   procedure ProcessInput  (command: Int; i1: Int; i2: Int) is
      spit : Boolean := False;
      hitId: Integer := 0;
   begin

      spit := False;

      if command = CMD.SCREENSIZE then
         spit := True;
         screenX := i1;
         screenY := i2;
         -- scaleModels
        alScaleModel(cockpit.modelId,1.0+C_float(i1)/C_float(i2),1.5,1.0);
      end if;

      if command = CMD.TOUCH_END then
        --touchedX := fUnassigned;
        --touchedY := fUnassigned;
        null;
      end if;

      if command = CMD.TOUCH_START then

--     planetNo := planetNo + 1;
--     if planetNo > 8 then planetNo := 0; end if;

         hitId := HitTestCode.DoIt(Float(i1)/ Float(1190), Float(i2)/ Float(700));
         if hitId>=1 and hitId<=5 then onHit(hitId); end if;
     --    Text_IO.Put_Line("Hit" & Integer'Image(Standard.Integer(hitID)));
      end if;

      Text_IO.Put_Line(Integer'Image(Standard.Integer(command)) & "=(" & Integer'Image(Standard.Integer(i1)) & "," & Integer'Image(Standard.Integer(i2)) & ")");

   end ProcessInput;




   procedure onHit(hitId: Integer) is
   begin
      if hitId=ANIMSEQ_SURFACE then
         nseq:=ANIMSEQ_SURFACE;
         keyframe:=1;
      end if;
   end onHit;

   procedure DeInit is
   begin
     null;
   end DeInit;

end AdaApp;

