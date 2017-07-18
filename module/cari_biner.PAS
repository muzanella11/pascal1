program binary_search;
Uses crt;
// Deklarasi Type
Type Tipe_larik = word;
     Larik     = array [1..8] of tipe_larik;

//Method caribiner
procedure caribiner (x : larik; cari : tipe_larik; bawah,atas : word;
var urutketemu : word);

var tengah : word;
begin
     if bawah > atas then urutketemu :=0
     else
         begin
              tengah := (bawah+atas) div 2;
              if cari = x[tengah] then
                 urutketemu := tengah
              else
                  if cari < x[tengah] then
                  caribiner (x, cari, bawah, tengah-1, urutketemu)
                  else
                  caribiner (x, cari, tengah +1, atas, urutketemu);
                  end;
end;

type nama = string [20];

const
     npm : larik = (1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241);
     nama_mhs : array [1..8] of nama =
     ('arief','ani','ana','citra','dewi','erni','fanny','ghana');
var
   cari : word;
   ketemu : word;
   lagi : char;

begin
     lagi := 'Y';
     while upcase (lagi) = 'Y' do
     begin
          clrscr;
          write ('NPM mahasiswa yang dicari : ');
     readln (cari);
            writeln;
            caribiner (npm, cari, 1, 8, ketemu);

            if ketemu = 0 then
                writeln('npm mahasiswa ini tidak ada')
            else
            begin
            writeln ('NPM mahasiswa  :', npm [ketemu]);
            writeln ('Nama mahasiswa :', nama_mhs [ketemu]);
            end;     writeln;

            write ('cari yang lain lagi (Y/T) ?'); readln (lagi);
            end;
end.
