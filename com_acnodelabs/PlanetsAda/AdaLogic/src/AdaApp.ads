with Ada.Text_IO; use Ada.Text_IO;
with Interfaces.C; use Interfaces.C;
with cmd; use cmd;
with Ada.Strings.Unbounded;
with Interfaces.C.Strings; use Interfaces.C.Strings;
with AlgeSDK; use AlgeSDK;
with Ada.Containers.Vectors; use Ada.Containers;

package AdaApp is

   timeVar : C_float := 0.0;
   width : Standard.Integer := 0;
   height: Standard.Integer := 0;

   type FloatBounds is tagged
    record
         name: Int;
         xMin: Float;
         xMax: Float;
         yMin: Float;
         yMax: Float;
   end record;

   package HitList is new Vectors(Index_Type   => Natural,
                                  Element_Type => FloatBounds);

   procedure Init;
   procedure Update(dt : C_float);
   procedure Render;
   procedure ProcessInput (command: Int; i1: Int; i2: Int);
   procedure DeInit;

   function HitTest (command: Int; i1: Int; i2: Int) return Int;


   pragma export (CPP, Render, "AppRender");
   pragma export (CPP, Init, "AppInit");
   pragma export (CPP, Update, "AppUpdate");
   pragma export (CPP, DeInit, "AppDeInit");
   pragma export (CPP, ProcessInput, "AppProcessInput");

end AdaApp;

