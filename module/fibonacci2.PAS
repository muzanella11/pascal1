program fibonacci2;
uses crt;
var
 i,fiboatas,fibobawah,x :integer;
function fibonacci (n:word):word;
begin
if n < 2 then fibonacci := n
else
  begin
  fibobawah := 0;
  fiboatas  := 1;
  for i := 2 to n do
  begin
  x := fibobawah;
  fiboatas := fiboatas;
  end;
  fibonacci:= fiboatas;
  end;
end;
var
n : word;
  begin
    clrscr;
    write('suku ke berapa ? :');
    readln(n);
    writeln('nilai suku ke ',n,' adalah',fibonacci(n));
    readln;
end.
