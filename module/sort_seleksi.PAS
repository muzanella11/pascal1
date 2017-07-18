program urut_seleksi;

uses crt;
// Deklarasi Variable
var
  i,j,k,temp,imaks,n : integer;
  a,b,c              : array[1..100] of integer;
begin
  clrscr;       textcolor(10);
  write('Banyaknya element array :');   readln(n);

{input data}
for i := 1 to n do begin
  write('element ke-',i,':');   readln(A[i]);
end;

{print array sebelum pengurutan}
writeln;        textcolor(15);  write('Sebelum diurutkan :');
  for i := 1 to n do    write(A[i],' ');
  writeln; writeln;     textcolor(15);
  writeln('Proses Pengurutan Seleksi :');
  for i := 1 to n-1 do begin
        imaks := i;
        for j := i+1 to n do
          if A[j] > A[imaks] then imaks :=j;

{tukar A[j] dengan A[imaks]}
temp := A[imaks];
A[imaks] := A[i];
A[i] := temp;
writeln;        textcolor(12);

{print array tiap langkah pengurutan}
write('Hasil Akhir langkah ke-',i,':');
for k := 1 to n do
  write(A[k],' ');
end;

writeln;
writeln;

{print array setelah pengurutan}
textcolor(15);  write('Hasil pengurutan seleksi :');
for i := 1 to n do      write(A[i],' ');
readln;
end.
