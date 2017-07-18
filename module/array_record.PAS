program array_record;

uses crt;

// Deklarasi Type Data
Type mahasiswa = record
	 Nama: string;
	 Npm : string;
	 Nilai: string;
end;

//For Looping
var  Mhs : array [1..10] of mahasiswa;
	 Jum : byte;
	 I,J : integer;

//Method Input
Procedure Input;
Begin
	 writeln ('Data Mhs');
	 write ('Jumlah Data :');
	 Readln (Jum);
	 writeln;
			 For I := 1 to jum do
			 begin
			 writeln ('Data ke- ', I);
			 write ('Nama :'); readln (Mhs [I] .Nama);
			 write ('Npm  :'); readln (Mhs [I] .Npm);
			 write ('Nilai :'); readln (Mhs [I] .Nilai);
			 writeln;
			 end;
end;

//Method Judul
Procedure Judul ;
Begin
	 Clrscr;
	 Gotoxy (13,1); writeln ('DATA MAHASISWA ');
	 Writeln ('------------------------------');
	 gotoxy (3,3); write ('No');
	 gotoxy (7,3); write ('Nama');
	 gotoxy (27,3); write ('Npm');
	 gotoxy (45,3); write ('Nilai');
	 gotoxy (45,3); write ('Nilai');
	 writeln ('-----------------------------');
end;

//Method Tampil
Procedure Tampil;
Begin
	 for I := 1 to Jum do
	 begin
	 gotoxy (3,4 + I); write (I) ;
	 gotoxy (7,4 + I); write (Mhs [I] .Nama);
	 gotoxy (27,4 + I); write (Mhs [I] .Npm);
	 gotoxy (45,4 + I); write (Mhs [I] .Nilai);
	 end;
	 writeln ('______________________________');
end;

// Run All Method
Begin
	 Clrscr;
			Input;
			Judul;
			Tampil;
			Readln;
end.
