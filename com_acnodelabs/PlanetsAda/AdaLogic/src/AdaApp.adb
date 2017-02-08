with AlgeSDK; use AlgeSDK;
with Text_IO; use Text_IO;
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

   hitCursor : HitList.Cursor;
   hitBounds : HitList.Vector;

   boundsOfBtn1 : FloatBounds := (1, 0.4,0.1,0.4,0.5);
   boundsOfBtn2 : FloatBounds := (2, 0.4,0.5,0.4,0.5);
   boundsOfBtn3 : FloatBounds := (3, 0.4,0.5,0.4,0.5);
   boundsOfBtn4 : FloatBounds := (4, 0.4,0.5,0.4,0.5);
   boundsOfPlnt : FloatBounds := (5, 0.4,0.5,0.4,0.5);

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
      alPushP(CMD.SNDSET, New_String("cosmos.wav"),Null_Ptr);

      hitBounds.Append(boundsOfBtn1);
      hitBounds.Append(boundsOfBtn2);
      hitBounds.Append(boundsOfBtn3);
      hitBounds.Append(boundsOfBtn4);
      hitBounds.Append(boundsOfPlnt);

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
   begin

      spit := False;

      if command = CMD.SCREENSIZE then
         spit := True;
      end if;


      if command = CMD.TOUCH_START then
         planetNo := planetNo + 1;
         if planetNo > 8 then planetNo := 0; end if;
         spit := True;
      end if;

      Text_IO.Put_Line(Integer'Image(Standard.Integer(command)) & "=(" & Integer'Image(Standard.Integer(i1)) & "," & Integer'Image(Standard.Integer(i2)) & ")");

   end ProcessInput;

   function HitTest (command: Int; i1: Int; i2: Int) return Int is
   begin
      hitCursor := hitBounds.First;

--        while hitCursor loop
--          Ada.Integer_Text_IO.Put(hitBounds.Element(hitCursor));
--          Ada.Text_IO.New_Line;
--          hitBounds.Next(hitCursor);
--        end loop;
      return 0;
   end HitTest;


   procedure DeInit is
   begin
     null;
   end DeInit;

end AdaApp;

