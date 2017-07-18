program hitung_rata2;
uses crt;
var k,n,bil :integer;
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

procedure hitungjumlah(var total :longint);
var i:integer;
begin
for i  :=1 to n do
total :=total + A[i];
end; {end of procedure}

{program utama}
begin
clrscr;
InputData; {panggil procedure inputdata}
writeln('banyaknya bilangan :',n);
write('elemen array-nya adalah :');
cetakarray; {panggil prosedur cetakarray}
writeln;
hitungjumlah(jumlah); {panggil hitungjumlah}
write('jumlah akhir =',jumlah);
rata :=jumlah/n; writeln('dan rata-rata =',rata);
writeln('--oSELESAIo--');
readln;
end.
