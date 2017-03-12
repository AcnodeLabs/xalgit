with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

package body AdaApp is

   voyager : GameObject;
   panel   : GameObject;
   star    : GameObject;
   cockpit : GameObject;
   arrowkeys : GameObject;

   NUMSTARS: constant int := 950;
   dist : Float := 30.0;
   desiredDist : Float := 15.0;

   speed : C_float := C_float(MIN_ALLOWABLE_SPEED);
   tilt : Float := 0.0;
   desiredTilt : Float := 0.0;


   type pos_array is array (1..NUMSTARS) of Position;
   starpos : pos_array;

   planets : array (0..8) of GameObject;
--   planet_size : array (0..8) of Float := (2440.0,6052.0,6371.0,3390.0,69911.0,58232.0,25362.0,24622.0,1440.0);--Moon:=,2274.0);
--  planet_size : array (0..8) of Float := (69911.0,69911.0,69911.0,69911.0,69911.0,69911.0,69911.0,69911.0,69911.0);--Moon:=,2274.0);
  planet_size : array (0..8) of Float := (1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0);--Moon:=,2274.0);
   planet_tga  : array (0..8) of chars_ptr := (
                                             New_String("mercury8k.tga"),
                                             New_String( "venus4_rgb_cyl_www.tga"),
                                             New_String("earth8k.tga"),
                                             New_String("mars8k.tga"),
                                             New_String("jupiter_rgb_cyl_www.tga"),
                                             New_String("saturn.tga"),
                                             New_String("uranus.tga"),
                                             New_String("neptune.tga"),
                                             New_String("pluto.tga")
                                            );

   --sc : float := 0.7  * 0.0001;
   sc : float := 1.0;
   planetNo : Integer := 0;
   iUnassigned : constant Int := -1;

   screenX  : Int := iUnassigned;
   screenY  : Int := iUnassigned;

   rGen : Generator;


   heading : Float := 180.0;
   desiredHeading : Float := 180.0;


   function incAnim(animstep: in out Float ) return Float is
      begin
      if animstep=0.0 then CTimed.Set(0.0,1.0,0.2,animStepTimed); CTimed.ReDo(animStepTimed); end if;
      animstep := StepLinear(deltaT, animStepTimed);
   return animstep;
   end incAnim;


   procedure Init is
      use Ada.Numerics.Float_Random;
     r, theta, phi: Float := 0.0;
   begin

      alAlphaTest(enable => 1);

      for n in 0..8
        loop
        planets(n).modelId := int (n);
        alLoadModel(New_String("sphere.alx")  , planet_tga(n) ,  int(planets(n).modelId), C_float(planet_size(n)*sc));
      end loop;

      voyager.modelId := 9;
      voyager.scale := 0.005;
      alLoadModel(New_String("voyager2.alx") , New_String("voyager2.tga") , int(voyager.modelId) , C_float(voyager.scale));

      panel.modelId := 10;
      alLoadModel(New_String("misc.alx")       , New_String("misc.tga")        , int(panel.modelId) , 1.0);

      cockpit.modelId := 11;
      alLoadModel(New_String("rect1.alx")       , New_String("cockpit_1.tga")        , int(cockpit.modelId) , 1.0);

      star.modelId := 12;
      alLoadModel(New_String("star.alx"), New_String("star.tga"), int(star.modelId), 0.3);

      arrowkeys.modelId := 13;
      alLoadModel(New_String("rect1.alx"), New_String("arrowkeys.tga"), int(arrowkeys.modelId), 0.2);


      Reset(rGen);

--        --SUN
--        starpos(1).values.x := 3.0;
--        starpos(1).values.y := 0.0;
--        starpos(1).values.z := -120.0;

      for n in 1..NUMSTARS
      loop
          r := 70.0 + (Random(rGen) * 100.0);
         theta :=  (Random(rGen) * 44.0/ 7.0);
         phi :=  (Random(rGen) * 44.0/ 7.0);

         starpos(n).values.x := r * Sin(theta) * Cos(phi);  --https://en.wikipedia.org/wiki/Spherical_coordinate_system
         starpos(n).values.y := r * Sin(theta) * Sin(phi);
         starpos(n).values.z := r * Cos(theta) ;

   --
      end loop;

      -- Load Sounds
      -- alPushP(CMD.SNDSET, New_String("cosmos.wav"),Null_Ptr);

      Put_Line("Hit Init 5 Hotspots");
   -- https://docs.google.com/spreadsheets/d/1LnzLCQDEV4u01F0RhHSR2k0h-F8e-l5XopcBfGvRc1g/edit#gid=0
      hitBounds.Append((1, 0.32,0.40, 0.04,0.14)); --btn1
      hitBounds.Append((2, 0.42,0.49, 0.04,0.14)); --btn2
      hitBounds.Append((3, 0.51,0.59, 0.04,0.14)); --btn3
      hitBounds.Append((4, 0.60,0.68, 0.04,0.14)); --btn4
      hitBounds.Append((10, 0.4,0.6,0.3,0.7));     --planet

   end Init;


   procedure updateVar(deltaT: C_float; var :in out Float; varTo : in out Float) is
   begin
      if var < varTo then var := var + Float(speed) * Float(deltaT) * 0.1 * abs(var - varTo); end if;
      if var > varTo then var := var - Float(speed) * Float(deltaT) * 0.1 * abs(var - varTo); end if;
   end updateVar;


   procedure Update(dt : Interfaces.C.C_float) is
   begin
      timeVar:= timeVar + dt;
      updateVar(dt, tilt, desiredTilt);
      updateVar(dt, dist, desiredDist);
      updateVar(dt, heading, desiredHeading);

   --    if dist <= Float(MIN_ALLOWABLE_DISTANCE + 0.1) then speed := MIN_ALLOWABLE_SPEED; else speed := NORMAL_SPEED; end if;
   end Update;

   procedure renderStars is
      angle1 : float := 0.0;
   begin
      angle1 := float(timeVar) * FACTOR_RADIANS_DEGREES * 0.012; -- Convert to Degrees
      for n in 1..NUMSTARS
      loop

      --   alBillBoardBegin;

         alDrawModelTranslateRotate(id          => star.modelId,
                                    posx        => C_float(starpos(n).values.x),
                                    posy        => C_float(starpos(n).values.y),
                                    posz        => C_float(starpos(n).values.z),
                                    angle       => C_float(timeVar * speed),
                                    y           => 1.0,
                                    rotatefirst => 1,
                                    billboard   => 1
                                   );
   --      alBillBoardEnd;
      end loop;
   end renderStars;


   procedure renderPlanets is

      angleStep : C_float := 45.0;
      nr : Integer;
   begin
      alPushMatrix;
      for n in 0..8

      loop
        -- bearing := angleStep * C_float(n);
         nr := 8 - n;
         -- only draw planets in front
       --  if bearing > 270.0 and then bearing < 90.0 then

         alPushMatrix;
           -- alTranslateRotate(posz => C_float(dist));
         if nr = planetNo then --planetNo
                               --      Put_Line("planetNo=" & planetNo'Image & " drawing" &  planets(nr).modelId'Image);
            alTranslateRotate(angle => C_float(timeVar * speed), y => 1.0);
            alDrawModel(id => planets(nr).modelId);
         end if;
         alPopMatrix;
       --  end if;

         alTranslateRotate(angle => angleStep, y => 1.0);
      end loop;
      alPopMatrix;
   end renderPlanets;

   procedure Render is
     angle1 : float := 0.0;
   begin
      angle1 := float(timeVar) * FACTOR_RADIANS_DEGREES  * 0.2; -- Convert to Degrees
     -- angle1 := 0.0;

       -- draw cockpit
      --   alAlphaTest(set_unset => 0);

      --set spin
   alPushMatrix; -- save for cockpit
                 --alLoadIdentity;
      renderStars;
      alTranslateRotate(posz => C_float(-dist));
      alTranslateRotate( angle => C_float(tilt),  z => 1.0);
      alTranslateRotate(angle => C_float(heading), y => 1.0);


      renderPlanets;

       -- alaluLookAt(C_float(eye.x),C_float(eye.y),C_float(eye.z),
       --            C_float(tgt.x),C_float(tgt.y),C_float(tgt.z),
        --            C_float(up.x), C_float(up.y), C_float(up.z));

       alPushMatrix;
--        angle1 := 0.0;
        alTranslateRotate( angle => C_float(angle1),  y => 1.0);
        alDrawModelTranslateRotate(id => voyager.modelId, posz  => 1.4, angle => 180.0,  y => 1.0);
       alPopMatrix;-- undo rotation

      alPopMatrix;

      -- draw cockpit

      if (dist >0.9) then
      alDrawModelTranslateRotate(id => cockpit.modelId );
      end if;
      --draw arrow keys
      alScaleModel(id => arrowkeys.modelId, sx => 1.0, sy => 0.5, sz=> 1.0);
      alTranslateRotate( posy => -1.15);
      alDrawModelTranslateRotate(id => arrowkeys.modelId );

   --   eye.z := eye.z - angle1 * 0.1;
      -- draw panel
      -- alDrawModelTranslateRotate(id => panel.modelId, posy => 1.0, angle => 180.0, z => 1.0 );


   end Render;

   function getMinimumDistanceAllowedForPlanet( p: Integer) return Float is
      dst : Float := 0.0;
   begin
      if planetNo = 0 then dst := -1.0; end if;
      return dst;
   end getMinimumDistanceAllowedForPlanet;


   procedure ProcessInput  (command: Int; i1: Int; i2: Int) is
      spit : Boolean := False;
      hitId: Integer := 0;
       min: Float := 0.0;
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

     planetNo := planetNo + 1;
     desiredHeading := 180.0 + Float(planetNo) * 45.0;
     if planetNo = 0 then desiredHeading := 180.0; end if;
     if desiredHeading > 180.0 + 8.0 * 45.0 then desiredHeading := 180.0;  end if;
 --    if desiredHeading > 180.0 + 8.0 * 45.0 then desiredHeading := 180.0;  end if;


     if planetNo > 8 then planetNo := 0; end if;

         hitId := HitTestCode.DoIt(Float(i1)/ Float(1190), Float(i2)/ Float(700));
         if hitId>=1 and hitId<=5 then onHit(hitId); end if;
     --    Text_IO.Put_Line("Hit" & Integer'Image(Standard.Integer(hitID)));
      end if;

      ----------------------------------  101 ----
      --  Keycodes of arrow keys are         100  103 102
      --  ----------------------------------------
      if command = CMD.KEYDOWN then

         if i1 = 101 then -- Fwd
            if desiredDist = 0.0 then
               desiredDist := Float(MIN_ALLOWABLE_DISTANCE);
            else
               desiredDist := 0.0;
                 end if;
         end if;


         if i1 = 103 then -- back
            desiredDist := 20.0;
            desiredTilt := 0.0;
         end if;

         if i1 = 100 then -- Fwd
            desiredTilt := desiredTilt -2.0;
         end if;

         if i1 = 102 then -- back
           desiredTilt := desiredTilt +2.0;
         end if;


      end if;

    --  Text_IO.Put_Line(Integer'Image(Standard.Integer(command)) & "=(" & Integer'Image(Standard.Integer(i1)) & "," & Integer'Image(Standard.Integer(i2)) & ")");

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

