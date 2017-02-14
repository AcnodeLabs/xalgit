

package body AdaApp is

   voyager : GameObject;
   panel     : GameObject;
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

   procedure Init is
   begin

      voyager.modelId := 0;
      voyager.scale := 0.015;
      alLoadModel(New_String("voyager2.alx") , New_String("voyager2.tga") , int(voyager.modelId) , C_float(voyager.scale));

      panel.modelId := 1;
      alLoadModel(New_String("misc.alx")       , New_String("misc.tga")        , int(panel.modelId) , 1.0);

      for n in 0..8
        loop
        planets(n).modelId := int (2 + n);
        alLoadModel(New_String("sphere.alx")  , planet_tga(n) ,  int(planets(n).modelId), C_float(planet_size(n)*sc));
      end loop;

      -- Load Sounds
  --    alPushP(CMD.SNDSET, New_String("cosmos.wav"),Null_Ptr);

      Text_IO.Put_Line("Hit Init 5 Hotspots");
   -- https://docs.google.com/spreadsheets/d/1LnzLCQDEV4u01F0RhHSR2k0h-F8e-l5XopcBfGvRc1g/edit#gid=0
      hitBounds.Append((1, 0.32,0.40, 0.04,0.14)); --btn1
      hitBounds.Append((2, 0.42,0.49, 0.04,0.14)); --btn2
      hitBounds.Append((3, 0.51,0.59, 0.04,0.14)); --btn3
      hitBounds.Append((4, 0.60,0.68, 0.04,0.14)); --btn4
      hitBounds.Append((10, 0.4,0.6,0.3,0.7));     --planet

   end Init;

   procedure Update(dt : Interfaces.C.C_float) is
   begin
      timeVar := timeVar + dt;
   end Update;

   procedure Render is
     angle1 : float := 0.0;
   begin
      angle1 := float(timeVar) * FACTOR_RADIANS_DEGREES ; -- Convert to Degrees

      -- draw panel
      alDrawModelTranslateRotate(id => panel.modelId, posy => 1.0, angle => 180.0, z => 1.0 );

      --set spin
      alTranslateRotate( angle => C_float(angle1),  y => 1.0);

      -- drawPlanet
      alDrawModel(id => planets(planetNo).modelId)  ;

      -- pos rot and draw voyager
      alDrawModelTranslateRotate(id => voyager.modelId, posz  => 1.0, angle => 180.0,  y => 1.0);

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
      end if;

      if command = CMD.TOUCH_END then
        --touchedX := fUnassigned;
        --touchedY := fUnassigned;
        null;
      end if;

      if command = CMD.TOUCH_START then

--     planetNo := planetNo + 1;
--     if planetNo > 8 then planetNo := 0; end if;

         hitId :=
           HitTestCode.DoIt(Float(i1)/ Float(1190), Float(i2)/ Float(700));
         Text_IO.Put_Line("Hit" & Integer'Image(Standard.Integer(hitID)));
      end if;

      Text_IO.Put_Line(Integer'Image(Standard.Integer(command)) & "=(" & Integer'Image(Standard.Integer(i1)) & "," & Integer'Image(Standard.Integer(i2)) & ")");

   end ProcessInput;


   procedure DeInit is
   begin
     null;
   end DeInit;

end AdaApp;

