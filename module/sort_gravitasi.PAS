program sort_gravitasi;

uses crt;
// Deklarasi Variable
var i,j,k,temp, n : integer;
    A,B,C :array [1..100] of integer;

begin
clrscr; textcolor(12);
write('banyaknya elemen array : '); readln(n);
{input data}
for i :=1 to n do
begin
write('elemen ke-',i,':'); readln(A[i]);
end;
{print array sebelum pengurutan}
writeln; textcolor(15); write('sebelum diurutkan :');
for i :=1 to n do
write(A[i],' ');
writeln; textcolor(15);
writeln; writeln('proses pengurutan gravitasi :');
for i := 1 to n-1 do begin
for j :=1 to n-1 do begin
if A[j] > A[j+1] then begin
temp :=A[j+1];
A[j+1] :=A[j];
A[j] :=temp;
end;
end;
writeln;        textcolor(i);
{print array tiap langkah pengurutan:}
write('hasil akhir langkah ke-',i,':');
for k :=1 to n do
write(A[k],' ');
end;
{print array setelah pengurutan}
writeln; writeln; textcolor(15);
write('hasil pengurutan gravitasi :');
for i :=1 to n do
write(A[i],' ');
writeln; writeln;       textcolor(10);
write('sudah terurut dengan benar kan..?');
readln;
end.
