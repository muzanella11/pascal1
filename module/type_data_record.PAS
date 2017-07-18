program type_data_record;
uses crt;
type hasil = record
jarijari : real;
keliling : real;
luas : real;
end;
var lingkaran : hasil;
begin
with lingkaran do
begin
write('jari-jari lingkaran?'); readln(jarijari);
keliling :=2*PI*jarijari;
luas := PI*sqr(jarijari);
writeln;
writeln('keliling lingkaran =', keliling:7:2);
writeln('luas lingkaran =', luas :7:2);
readln;
end;
end.
