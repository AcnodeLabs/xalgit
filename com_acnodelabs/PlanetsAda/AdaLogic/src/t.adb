--------------------------------t.adb

 with ada.text_io;
 with t.th;
 package body t is
    procedure test(a,b,z,d,e:c.int) is
       myd : integer := 0;
    begin
       t.th.t.getToken (myd);
       ada.text_io.put_line(myd'img & " and e value is" & c.int'image(e));
    end;

 end t;
