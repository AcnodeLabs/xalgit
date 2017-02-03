----------------------------- t.ads
with interfaces.c;

 package t is

    package C renames interfaces.c;

    procedure test(a,b,z,d,e:c.int) ;
    pragma export (stdcall, test, "test");

 end t;
