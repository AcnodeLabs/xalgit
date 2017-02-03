------------------------------------t-th.adb

 with ada.text_io;
 package body t.th is
    task body T is
       use ada.text_io;

    begin

       loop
          select
             accept getToken (t : out integer) do
                t := d;
             end getToken;
          or
             terminate;
          end select;
          d := d + 1;
       end loop;

    end ;
 end t.th;
