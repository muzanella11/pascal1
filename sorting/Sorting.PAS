program sort1;

uses crt;
type kerja=record
gol:string;
nama:string;
gaji:longint;
end;
kar=array[1..50] of kerja;

var
karyawan : kar;           
i,j,jum : byte;
ya : boolean;
pil: char;

procedure isi(var x:kar);
begin
i:=0;
ya:=true;
repeat
begin
i:=i+1;
writeln ('---------------------------------------');
writeln('Isi Data Karyawan Ke- ',i:4);
writeln ('---------------------------------------');
with x[i] do

begin
write (' Golongan : '); readln (gol);
write (' Nama Karyawan : '); readln (nama);
write (' Gaji Karyawan : '); readln (gaji);
writeln ('---------------------------------------');
end;

write ( 'Tambah data ? (y/t): '); readln(pil);
if pil <> 'y' then ya:=false;
writeln;
end;
until( ya=false );
jum:=i;
end;

procedure sorting(var x:kar);
var
urut : kerja;
begin
writeln (' Sorting Menurut Gaji ');
for i:= 1 to jum-1 do
begin
for j:=i+1 to jum do
begin
if x[i].gaji > x[j].gaji then begin
urut:=x[i];x[i]:=x[j];x[j]:=urut;end;
end;
end;
end;

procedure cari(var x:kar);
var
ketemu : boolean;
cari :string;
begin
writeln ( ' Pencarian Karyawan ');
write ('Nama Karyawan : ');readln(cari);
ketemu:=false;
for i:=1 to jum do
begin
if x[i].nama=cari then ketemu:=true;
end;
if ketemu then
writeln ('karyawan yang bernama (',cari,' ) ada dalam perusahaan kami')
else
writeln (' Maaf tidak ada karyawan yang bernama (',cari,' ) dalam perusahaan kami');
end;

procedure tampil(var x:kar);
begin
writeln;
writeln (' Data Karyawan ');
writeln ('------------------------------------------');
writeln ('| No.| Gol. | nama | gaji |');
writeln ('------------------------------------------');
for i:=1 to jum do
writeln ('|',i:5,'|',x[i].gol:10,'|',x[i].nama:10,'|',x[i].gaji:12,'|');
writeln ('------------------------------------------');
end;

begin
clrscr;
Writeln ( ' PROGRAM DATA KARYAWAN PT. DONO Tbk. ');
writeln;
isi(karyawan);
write ('Tekan Enter untuk melihat Data');readln;
tampil(karyawan);
sorting(karyawan);
tampil(karyawan);
write (' Tekan Enter untuk Mencari Karyawan');readln;
cari (karyawan); readln;
end.
