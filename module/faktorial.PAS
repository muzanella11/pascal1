program faktorial;
uses crt;
// Method Faktorial
procedure faktorial (n:byte ; var hasil: longint);
begin
if N <=1 then hasil :=1
else begin
     faktorial (N-1, hasil);
     hasil :=N*hasil;
end;     end;
var N:byte;     F:longint;
begin
     write ('berapa faktorial?');       readln (N);

     faktorial (N,F) ;     writeln ('faktorial =',F);   readln;
end.
