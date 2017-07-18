program hitung_rata_3;
uses crt;
var k,n,maksimum,minimum :integer;
jumlah:longint;
rata:real;
A:array[0..100] of integer;
procedure inputdata;
begin
while A[n] <> -9 do begin
n :=n+1;
write('masukkan bilangnnya :'); readln(A[n]);
end; {end of while}
n :=n-1;
end; {end of procedure}

procedure cetakarray;
var i :integer;
begin
for i := 1 to n do write(A[i],',');
end;
function total(B :array of integer; x:integer) :longint;
var i :integer;
temp :longint;
begin
temp :=0;
for i := 1 to x do  temp :=temp + B[i];
total :=temp;
end; {end of function}
function min(B:array of integer; x:integer) :integer;
var i : integer;
temp :integer;
begin
temp := B[1];
for i :=2 to x do if temp > B[i] then temp :=B[i];
min :=temp;
end; {end of function}
function max(D:array of integer; N:integer) :longint;
var i :integer;
temp :integer;
begin
temp :=D[1];
for i :=2 to n do if temp < D[i] then temp :=D[i];
max :=temp;
end; {end of function}
begin {program utama}
inputdata;
writeln('banyaknya bilangan :',n);
write('elemen array-nya adalah :'); cetakarray; writeln;
jumlah := total(A,n);   write('jumlah akhir =',jumlah);
rata :=jumlah/n;        writeln('dan rata-rata =',rata);
minimum :=min(A,n); writeln('elemen terkecil =',minimum);
maksimum :=max(A,n); writeln('elemen terbesar=',maksimum);
writeln('--oselesaio--');
readln;
end.

procedure hitungjumlah(A:array of integer; X:integer;
var total :longint);
var i:integer;
begin
for i  :=1 to x do total :=total + A[i];
end; {end of procedure}

{program utama}
begin
clrscr;
InputData(A,n);{panggil procedure inputdata}
writeln('banyaknya bilangan :',n);
write('elemen array-nya adalah :');
cetakarray(A,n); {panggil prosedur cetakarray}
writeln;
hitungjumlah(A,n,jumlah); {panggil hitungjumlah}
write('jumlah akhir =',jumlah);
rata :=jumlah/n; writeln('dan rata-rata =',rata);
writeln('--oSELESAIo--');
readln;
end.
