with Ada.Text_IO; use Ada.Text_IO;

procedure FizzBuzz is
    procedure Core (N : Integer)
    is -- todo: leverage spark
    begin
        if N mod 15 = 0 then
            Ada.Text_IO.Put_Line ("FizzBuzz");
        elsif N mod 5 = 0 then
            Ada.Text_IO.Put_Line ("Buzz");
        elsif N mod 3 = 0 then
            Ada.Text_IO.Put_Line ("Fizz");
        else
            Ada.Text_IO.Put_Line (N'Image);
        end if;
    end Core;
begin
    for I in 1 .. 100 loop
        Core (I);
    end loop;
end FizzBuzz;
