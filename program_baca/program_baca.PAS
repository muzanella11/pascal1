program baca_data;

uses crt;

const jumlah_mk = 5;

garis = '---------------------------------------';

type b_nilai = 1..100;
    nilai = record
        nama_mhs     : string[25];
        no_mhs       : string[5];
        angkatan     : string[5];
        nilai_ujian  : array[1..jumlah_mk] of b_nilai;
        nilai_rata   :real;
    end;
    
	d_nilai = file of nilai;
	
var daf_nilai  : d_nilai;
    nilai_mhs  : nilai;
    i,j,n      : integer;

begin
	Clrscr;
	assign(daf_nilai,'nilai.dat');
	reset(daf_nilai);
	n := filesize(daf_nilai);
	writeln(' ': 28, 'DAFTAR NILAI UJIAN AKHIR');
	writeln(' ': 28, '------------------------');
	writeln;writeln(garis,garis);
	write('|No|   Nama mahasiswa            |No MHS  |');
	writeln('N1  | N2 | N3 | N4 |N5  |Rata2|');
	writeln(garis,garis);
		for i := 1 to n do                                   
		begin
		gotoxy(1,i+6);write('|',i:2,'|');
		read(daf_nilai,nilai_mhs);
			with  nilai_mhs do
			begin
			gotoxy(8,i+6);write(nama_mhs);
			gotoxy(34,i+6);write('|', no_mhs);
			
				for j := 1 to jumlah_mk do
				begin
					gotoxy(43+5*(j-1),i+6);write('|',nilai_ujian[j]:2);
				end;			
				gotoxy(68,i+6);
				writeln('|',nilai_rata:5:2,'|');
					
			end;
		end;
		writeln(garis,garis);
		close(daf_nilai);
		readln;
end.
