program urut_insertion_sort;

uses crt;

// Deklarasi Variable
var
    i,j,k,temp, n : integer;
    A,B,C :array [1..100] of integer;

begin
     clrscr;
     write('banyaknya elemen array : '); readln(n);

{input data}
for i :=1 to n do
    begin
    write('elemen ke-',i,':'); readln(A[i]);
    end;

{print array sebelum pengurutan}
writeln; textcolor(15);
write('sebelum diurutkan :');
for i :=1 to n do
    write(A[i],' ');
    writeln; textcolor(15);
writeln; writeln('proses pengurutan insertion: ');
for i := 2 to n do begin
    temp :=A[i];
    j := i-1;
    while (temp < A[j]) and (j>0) do
    j :=j-1;
    for k :=i downto j+1 do
    A[k] := A[k-1];
    A[j+1] := temp;
    writeln;  textcolor(i);
    write('hasil akhir langkah ke-',i,':');
{print array tiap langkah pengurutan:}
for k :=1 to n do
    write(A[k],' ');
end;
{print array setelah pengurutan}
writeln; writeln; textcolor(15);
write('hasil pengurutan insertion :');
for i :=1 to n do
write(A[i],' ');
writeln; writeln;       textcolor(10);
write('sudah terurut dengan benar kan..?');
readln;
end.
