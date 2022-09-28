program calculator;

var
    a, b, c, sum_ab, sub_ab, square_root_c, square_c: real;
    option: integer;
    
procedure read_ab;
    begin
        writeln('Write a value for A: ');
        readln(a);
        writeln('Write a value for B: ');
        readln(b);
    end;
    
procedure read_c;
    begin
        writeln('Write a value for C: ');
        readln(c);
    end;

function sum(a,b: real): real;
    begin
        sum:=a+b;
    end;
    
function sub(a,b:real): real;
    begin
        sub:=a-b;
    end;
    
function root(c:real): real;
    begin
        root:=sqrt(c);
    end;
    
function square(c:real): real;
    begin
        square:=sqr(c);
    end;
    
    
begin
    
    repeat
        writeln('1: Read A and B ');
        writeln('2: Read C ');
        writeln('3: Sum of A and B ');
        writeln('4: Subtraction of A and B ');
        writeln('5: Square Root of C ');
        writeln('6: C Square ');
        writeln('7: END ');
        
        writeln('Choose your operation: ');
        readln(option);
        
        sum_ab:=sum(a,b);
        sub_ab:=sub(a,b);
        square_root_c:=root(c);
        square_c:=square(c);
        
        case option of
            1:read_ab;
            2:read_c;
            3:begin writeln('The result is: ',sum_ab:0:2) end;
            4:begin writeln('The result is: ',sub_ab:0:2) end;
            5:begin writeln('The result is: ',square_root_c:0:2) end;
            6:begin writeln('The result is: ',square_c:0:2) end;
        end;
        
    until option = 7;
    
end.

