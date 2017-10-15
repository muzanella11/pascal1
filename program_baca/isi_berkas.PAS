Program isi_berkas;
uses crt;
const jumlah_mk = 5;
type b_nilai = 1..100;
     nilai = record
           nama_mhs     : string[25];
           no_mhs       : string[5];
           angkatan     : string[5];
           nilai_ujian  : array[1..jumlah_mk] of b_nilai;
           nilai_rata   :real;
     end;
     d_nilai = file of nilai;
var daf_nilai : d_nilai;
    nilai_mhs : nilai;
    i,j       : integer;
    lagi      : char;
	
	begin
	assign(daf_nilai,'nilai.dat');
	rewrite(daf_nilai);
	i := 0;
	repeat
	inc(i);
	clrscr;
	writeln('Mengisi data pada berkas "Nilai.DAT"');
	writeln('-----------------------------------');writeln;
	writeln('Mengisi Rekaman Ke :', i:2);
	writeln('-------------------------');writeln;
	
	with nilai_mhs do
	begin
		 nilai_rata := 0.0;
		 write('Nama mahasiswa :');readln(nama_mhs);
		 write('Nomor mahasiswa :');readln(no_mhs);
		 write('Angkatan :');readln(angkatan);
		 for j := 1 to jumlah_mk do
		 begin
			  write('Nilai MK', j , ':');readln(nilai_ujian[j]);
			  nilai_rata := nilai_rata + nilai_ujian[j]
		 end;
		 Nilai_rata := nilai_rata/jumlah_mk
	end;
	
	write(daf_nilai,nilai_mhs);
	gotoxy(1,20);write('akan mengisi lagi? <y>a/<t>idak:');
	readln(lagi);
	until not(lagi in['Y','y']);
	close(daf_nilai);
	readln;
end.

