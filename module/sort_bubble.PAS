program sort_bubble;

uses crt;

// Deklarasi Variable
var
  i,j,k,temp,n : integer;
  a,b,c        : array[1..100] of integer;

begin
  clrscr;  textcolor(12);
  write('Banyaknya element array : ');  readln(n);
{input data}
for i := 1 to n do       a[i] := random(1000);
{print array sebelum pengurutan}
writeln;        textcolor(15);
write('Sebelum diurutkan :');
for i := 1 to n do      write(a[i],' ');
writeln;        textcolor(15);
writeln('Proses pengurutan bubble :');
for i := 1 to n-1 do
begin
 for j := n downto i+1 do begin
   if a[j-1] > a[j] then begin
     temp := a[j-1];
     a[j-1] := a[j];
     a[j] := temp;
   end;
end;
{print array tiap langkah pengurutan }
writeln;        write('Hasil akhir langkah ke-',i,':');
for k := 1 to n do      write(a[k],' ');
end;
{print array setelah pengurutan}
writeln;        writeln;
textcolor(15);  write('Hasil pengurutan bubble :');
for i := 1 to n do write(a[i],' ');
readln;
end.
