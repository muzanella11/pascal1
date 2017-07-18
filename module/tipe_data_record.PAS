type
tgllhr = record
hari   :1..31;
bulan : 1..12;
tahun : word;
end;
almt=record
jalan : string[35];
kota : string[25];
end;
mhs=record
nama:string[25];
alamat :almt;
tgllahir :tgllhr;
end;
var
datamhs :mhs;
begin

{masukan data mahasiswa}
datamhs.nama :='Nurfirliana Muzanella';
datamhs.alamat.jalan :='bogor atas';
datamhs.alamat.kota :='bogor';
datamhs.tgllahir.hari :='10 ';
datamhs.tgllahir.bulan :='04';
datamhs.tgllahir.tahun :='1996';
{menampilkan hasil}
with datamhs do
begin
writeln('nama mahasiswa =',nama);
with alamat do
begin
writeln('alamat =',jalan);
writeln('',kota);
end;
with tgllahir do
begin
writeln('tanggal lahir =',hari:2,'-',bulan:2,'-',tahun:4);
end;
end;
end.
