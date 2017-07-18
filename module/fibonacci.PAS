Program fibonacci;
uses crt;

// Deklarasi Method
Function Fibonacci (n: word): word;
begin
if n < 2 then fibonacci := n
else fibonacci := fibonacci(n-2) + fibonacci(n-1);
end;
var
n : word;
begin
  write('suku ke berapa ? :');
  readln(n);
  writeln('nilai suku ke ',n,' adalah ',fibonacci(n));
  readln;
end.
