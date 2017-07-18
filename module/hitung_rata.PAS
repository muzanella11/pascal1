program hitung_rata;
// Deklarasi Variable
uses crt;
var i,k,n :integer;
jumlah :longint;
rata :real;
A:array [0..100] of integer;
begin
clrscr;
{input data}
while A[n] <> -9 do
begin
n :=n+1;
write ('masukkan bilangannya :'); readln(A[n]);
end; {end of while}
n :=n-1;
writeln ('banyaknya bilangan :',n);
{mencetak elemen array}
write('elemen array-nya adalah :');
for i :=1 to n do
write (A[i],',');writeln;

{menghitung jumlah elemen array}
for i :=1 to n do Jumlah :=jumlah + A[i];
write('jumlah akhir =',jumlah);

{menghitung rata-rata}
RATA := Jumlah/n;
writeln('dan rata-rata =',rata);
writeln('selesai');
readln;
end.
