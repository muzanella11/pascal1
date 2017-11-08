program selection;
uses crt;
type
larik = array[1..10] of integer;
var
i,j,indexmin,n,temp:integer;
data:larik;
begin
	clrscr;
	write('Berapa data yang akan dimasukan ?');readln(n);
	for i := 1 to n do
	begin
		write('masukan data ke-'
		,i,
		'=');readln(data[i]);
	end;
	writeln;
	writeln('hehe : ', data[3]);
	for i := 1 to n-1 do
	begin
		indexmin :=i;
		for j := i+1 to n do
		begin
			if (data [j] < data[indexmin]) then indexmin := j;
		end;
			if (data[i] <> ( data[indexmin])) then
			begin
			temp := data[i];
			data[i] := data[indexmin];
			data[indexmin] :=temp;
			end;
	end;
	writeln('Setelah pengurutan:');
	for i := 1 to n do
	writeln('elemen ke-'
	,i,
	'='
	, data[i]);
    readln;
end.
