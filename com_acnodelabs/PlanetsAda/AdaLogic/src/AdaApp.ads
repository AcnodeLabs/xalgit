
with Interfaces.C; use Interfaces.C;
with cmd; use cmd;
with Ada.Strings.Unbounded;
with Interfaces.C.Strings; use Interfaces.C.Strings;
with AlgeSDK; use AlgeSDK;
with HitTestCode; use HitTestCode;
with Ada.Containers; use Ada.Containers;
with Ada.Containers.Vectors;
with Text_IO; use Text_IO;

package AdaApp is

   timeVar : C_float := 0.0;
   width : Standard.Integer := 0;
   height: Standard.Integer := 0;


   procedure Init;
   procedure Update(dt : C_float);
   procedure Render;
   procedure ProcessInput (command: Int; i1: Int; i2: Int);
   procedure DeInit;


   pragma export (CPP, Render, "AppRender");
   pragma export (CPP, Init, "AppInit");
   pragma export (CPP, Update, "AppUpdate");
   pragma export (CPP, DeInit, "AppDeInit");
   pragma export (CPP, ProcessInput, "AppProcessInput");

end AdaApp;

