program mahasiswa_sortby_npm;
uses crt;
type
datamhs = record
NPM :integer;
Nama :string[20];
IP :real;
end;
var
jumlahmhs,I,J :byte;
mahasiswa :array[1..50] of datamhs;
temp :datamhs;
begin
{masukan data mahasiswa}
write('jumlah mahasiswa?'); readln(jumlahmhs);
for i := 1 to jumlahmhs do
begin
writeln;
with mahasiswa[i] do
begin
writeln;
write('NPM ke ',i:2,'?'); readln(NPM);
write('nama mahasiswa ke',i:2,'?'); readln(nama);
write('IP mahasiswa ke ',i:2,'?'); readln(IP);
end;
end;
{menggunakan data berdasarkan NPM mahasiswa dengan bubble sort}
for i := 1 to jumlahmhs-1 do
for j := 1 to jumlahmhs-1 do
if mahasiswa[j].NPM>mahasiswa[j+1].NPM then
begin
temp :=mahasiswa[j];
mahasiswa[j] := mahasiswa[j+1];
mahasiswa[j+1] :=temp;
end;
{menampilkan hasil}
writeln;
writeln('---------------------------------');
writeln('NPM   Nama Mahasiswa    IP ');
writeln('---------------------------------');
for i := 1 to jumlahmhs do
begin
with mahasiswa[i] do
writeln(NPM:5, nama:20, IP:11:2);
end;
writeln('----------------------------------');
readln;
end.
