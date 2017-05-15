program easy1;
Uses crt;
var x, y, startFrom, totalData : integer;

procedure myIdentity ();
begin
writeln('Nama : Nurfirliana Muzanella');
writeln('Kelas : x2i');
writeln('NPM : 201643501401');
writeln('--------------------------------------------------');
end;

procedure matriks (startFrom : integer; totalData : integer);
begin
	for x := startFrom to totalData do
	begin
		for y := x to x + totalData - 1 do
		begin
			write(y, ' ');
		end;
		writeln;
	end;
end;

procedure init ();
begin
	myIdentity ();
	matriks (1, 5);
	readln;
end;

Begin
clrscr;
init ();
End.