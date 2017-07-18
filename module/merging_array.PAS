program merging_array;
uses crt;

// Deklarasi Variable
var i,j,k,m,n,y,temp:integer;
A,B,C :array[1..100] of integer;
procedure cetak_array(A:array of integer; x:integer);
var i:integer;
begin
write('hasilnya :');
for i :=0 to x-1 do write(A[i],' ');
end;

procedure sisip(var A:array of integer; x:integer);
var i,j,temp :integer;
begin
for i :=1 to x-1 do
begin
temp :=A[i]; j :=i;
while(temp <A[j-1]) and (j>0) do
j :=j-1;

for k :=i downto j do
A[k] :=A[k-1];
A[j] :=temp;
end;
end;

procedure gabung(A,B :array of integer; m,n :integer;
var C :array of integer; var x:integer);
var i,j,k,y : integer;
begin
i :=0;
j :=0;
k :=0;
while (i <=m) and (j <=n) do
begin
if A[i] < B[j] then
begin
C[k] :=A[i];
i := i+1;
end;
begin
C[k] :=B[j];
j :=j+1;
end;
k :=k+1;
write('i=',i,'j=',j,' k=',k,' ');
cetak_array(C,k-1);
writeln;
end;
if i > m then
begin
for y := k-1 to m+n do
begin
C[y] :=B[j];
j :=j+1;
end;
end;
if j>n then
begin
for y :=k-1 to m+n do
begin
C[y] :=A[i];
i := i+1;
end;
end;
write('setelah penggabungan :');
cetak_array(C,y);
x := y;
end;
begin
clrscr;
randomize;
writeln('M E R G I N G');
write('banyaknya elemen array pertama :');
readln(m);
write('banyaknya elemen array kedua:');
readln(n);
for i := 1 to m do
B[i] := random(100);

writeln('sebelum penggabungan :');
sisip(A,m);
write('array pertama :');
cetak_array(A,m); writeln;
sisip(B,n);
write('array kedua :');
cetak_array(B,n); writeln;

writeln('proses penggabungan :');
gabung(A,B,m,n,C,y);

writeln;
write('setelah penggabungan :');
cetak_array(C,y);
readln;
end.
