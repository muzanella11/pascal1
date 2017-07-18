program urut_insertion_swap_sort;
uses crt;
var
i,j,k,temp,imaks,n : integer;
A,B,C : array [1..100] of integer;

begin
     clrscr;
     textcolor(10);
     write ('Banyaknya Elemen Array : ');
     readln(n);

     {InputData}
     for i:=1 to n do
     begin
     write ('Elemen ke-',i, ': ');
     readln(A[i]);
     end;

     {Cetak Array Sebelum Pengurutan}
     writeln;
     textcolor(15);
     write('Sebelum diurutkan : ');
     for i:=1 to n do
     write(A[i],' ');
     writeln;
     writeln;
     textcolor(15);
     writeln('Proses Pengurutan Seleksi : ');
     for i:=n downto 2 do

     begin
     imaks:=i;
     for j:=1 to i do
         if A[j] > A[imaks] then imaks:=j;

     {Tukar A[j] dengan A[imaks]}
     temp:=A[imaks];
     A[imaks]:=A[i];
     A[i]:=temp;
     writeln;
     textcolor(i);

     {Cetak Array tiap langkah pengurutan: }
     write ('Hasil akhir langkah ke-',i,' : ');
     for k:=1 to n do
     write (A[k],' ');
     end;
     writeln;

     {Cetak Array Setelah Pengurutan}
     textcolor(15);
     write('Hasil Pengurutan Seleksi : ');
     for i:=1 to n do
     write (A[i],' ');
     readln;
end.
