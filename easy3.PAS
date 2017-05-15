program easy3;
Uses crt;

Type
	person = record
	nama : string;
	tinggiBadan : integer;
	beratBadan : integer;
	bmi : real;
	status : string;
end;

Var
	personData : array [1..10] of person;
	jumlahData : byte;
	x : integer;
	
procedure inputData;
var
	weight, height : integer;
	bmiRes : real;
	statusRes : string;
begin
	writeln('Data Person');
	write('Jumlah Data : ');
	readln(jumlahData);
	
	writeln;
		For x := 1 to jumlahData do
		begin
			writeln('Data ke - ', x);
			write('Nama : '); readln(personData[x].nama);
			write('Tinggi Badan : '); readln(personData[x].tinggiBadan);
			write('Berat Badan : '); readln(personData[x].beratBadan);
			bmiRes := personData[x].beratBadan / (personData[x].tinggiBadan * personData[x].tinggiBadan);
			personData[x].bmi := bmiRes;
			if bmiRes < 18.5 then
				begin
					statusRes := 'kurang'
				end;
			
			if bmiRes >= 18.5 AND bmiRes <= 24.0 then
				begin
					statusRes := 'ideal'
				end;
			
			if bmiRes > 25 then
				begin
					statusRes := 'lebih'
				end;
				
			personData[x].status := statusRes;
			writeln('Body Mass Index : ', bmiRes);
			writeln('Status : ', statusRes);
			writeln;
		end;
end;

procedure createTitle;
begin
	Clrscr;
	Gotoxy(13, 1); writeln('BODY MASS INDEX');
	writeln('---------------------------------------------------------------------------------------------');
	gotoxy(3, 3); write('No');
	gotoxy(7, 3); write('Nama');
	gotoxy(27, 3); write('Tinggi');
	gotoxy(45, 3); write('Berat');
	gotoxy(65, 3); write('BMI');
	gotoxy(85, 3); write('Status');
	writeln;
end;

Procedure printOut;
Begin
        for x:= 1 to jumlahData do
        begin
                gotoxy(3,4 + x); write(x);
                gotoxy(7,4 + x); write(personData[x].nama);
                gotoxy(27,4 + x); write(personData[x].tinggiBadan);
                gotoxy(45,4 + x); write(personData[x].beratBadan);
				gotoxy(65,4 + x); write(personData[x].bmi);
				gotoxy(85,4 + x); write(personData[x].status);
        end;
		writeln;
		writeln('---------------------------------------------------------------------------------------------');
        //writeln('------------------------------------');
end;

Procedure init;
Begin
        Clrscr;
		inputData;
		createTitle;
		printOut;
		readln;
end;

{Program Utama}
Begin
        init;
end.