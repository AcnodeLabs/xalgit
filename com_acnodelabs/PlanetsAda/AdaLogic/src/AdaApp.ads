
with Interfaces.C; use Interfaces.C;
with cmd; use cmd;
with Ada.Strings.Unbounded;
with Interfaces.C.Strings; use Interfaces.C.Strings;
with AlgeSDK; use AlgeSDK;
with HitTestCode; use HitTestCode;
with Ada.Containers; use Ada.Containers;
with Ada.Containers.Vectors;
with Text_IO; use Text_IO;
with Ada.Numerics.Float_Random;
with CAnimator; use CAnimator;
with CTimed; use CTimed;

package AdaApp is

   timeVar : C_float := 0.0;
   width : Standard.Integer := 0;
   height: Standard.Integer := 0;
   can : CAnimator.CAnim;

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

   -- App Specific
   ANIMSEQ_SPHERE: constant Integer	:= 1;
   ANIMSEQ_SURFACE: constant Integer	:= 2;
   ANIMSEQ_LAND: constant Integer	:= 3;
   ANIMSEQ_SLINGSHOT: constant Integer	:= 4;
   keyframe : Integer := 1;
   eye,eyerot,tgt : f3;
   procedure renderStars;
   procedure onHit(hitId: Integer);
   animstep : Float := 0.0;
   animStepTimed : CTimed.CTimedT;
   deltaT : Float;
   bz : C_float := 1.0;
   nseq : Integer := 0;
end AdaApp;

