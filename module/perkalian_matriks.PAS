program perkalian_matriks;
uses crt;

// Deklarasi Type
type
    larik=array [1..25, 1..25] of real;
var
   I,J,K : byte;
   M,N,L : byte;
   A,B,C : larik;
   
begin
     clrscr;
     write ('baris matriks pertama              ?');
readln(M);
          write('baris matriks pertam/baris matriks kedua ?');
          readln (N);
          write('Kolom matriks kedua            ?');
          readln (L);
          writeln;
{masukan data matriks pertama}
writeln('matriks yang pertama :'); 

// Begin Looping
for I :=1 to M do
begin
     for J :=1 to N do
     begin
     write ('nilai [',I,',',J,'] ');     readln (A[I,J] );
     end;
     writeln;
end;

{masukan data matriks kedua}
writeln('matriks yang kedua :');
for I :=1 to N do
    begin
         for J :=1 to N do
             begin
             write('Nilai [',I,',',J,']?');
    readln (B[I,J] );
    end;
    writeln;
end;
{perkalian matriks}
           for I :=1 to M do
           begin
                for J :=1 to N do
                begin
                     C[I,J] :=0;
                            for k :=1 to L do
                     C[I,J] :=C[I,J] + A[I,K] * B[K,J];
                     end;
           end;
{mencetak hasil perkalian}
clrscr;
writeln('hasil dari perkalian matriks : ');
writeln;
        for I :=1 to M do
        begin
             for J :=1 to L do
             write(C[I,J]:9:2);
             end;
end.
