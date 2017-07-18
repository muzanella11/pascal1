program file_teks;
uses crt;
var
berkasteks :text; {variable file}
kodebrg    : string[5];
namabrg    : string[20];
unitbrg    : integer;
hargabrg   : real;
lagi       : char;
begin
Assign(berkasteks,'barang.txt'); {hubungan dengan eksternal file}
Rewrite(berkasteks);           {bukafile}
lagi :='Y';
while upcase(lagi) ='Y' do
begin
clrscr;
gotoXY(5,6);write('kode barang  :');
gotoXY(5,8);write('nama barang  :');
gotoXY(5,10);write('unit barang :');
gotoXY(5,12);write('harga satuan barang :');

{masukan data ke variable-variable}
gotoXY(27,6);readln(kodebrg);
gotoXY(27,8);readln(namabrg);
gotoXY(27,10);readln(unitbrg);
gotoXY(27,12);readln(hargabrg);

{rekam file}
writeln(berkasteks,kodebrg:5,namabrg:20,unitbrg,hargabrg:10:2);
gotoXY(5,15);write('ada data lagi(Y/T)?');readln(lagi);
end;
{tutup file}
close(berkasteks);
end.
