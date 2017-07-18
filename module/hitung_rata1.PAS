program hitung_rata1;
uses crt;
var k,n,bil :integer;
jumlah:longint;
rata:real;
A:array[0..100] of integer;
procedure inputdata(var A:array of integer;
var I:integer);
begin
while A[I] <> -9 do begin
I :=I+1;
write('masukkan bilangnnya :'); readln(A[I]);
end; {end of while}
I :=I-1;
end; {end of procedure}

procedure cetakarray(A:array  of integer; N:integer);
var i :integer;
begin
for i := 1 to n do write(A[i],',');
end;

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
