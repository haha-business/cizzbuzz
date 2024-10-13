with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings; use Ada.Strings;
with Ada.Strings.Bounded;

procedure Fizzbuzz
is
    package B_Str
    is new Ada.Strings.Bounded.Generic_Bounded_Length
        (Max => 4);
    use B_Str;

    type Named_Factor
    is record
        Factor : Integer;
        Name   : Bounded_String;
    end record;

    type Index
    is range 1 .. 2;

    type Factor_Array
    is array (Index) of Named_Factor;

    Factors : Factor_Array := (
        (Factor => 3, Name => To_Bounded_String ("Fizz")),
        (Factor => 5, Name => To_Bounded_String ("Buzz"))
    );

    V : Named_Factor;

    Is_Named : Boolean;

    procedure Core (N : Integer)
    is begin -- todo: leverage spark
        Is_Named := false;
        for I in Index loop
            V := Factors (I);
            if N mod V.Factor = 0 then
                Put (To_String (V.Name));
                Is_Named := true;
            end if;
        end loop;

        if not Is_Named then
            Put (N'Image);
        end if;
        Put_Line ("");
    end Core;

    I : Integer := 1;
begin
    loop
        exit when I = 16;
        Core (I);
        I := I + 1;
    end loop;
end Fizzbuzz;
