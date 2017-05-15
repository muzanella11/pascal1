{
    Nurfirliana Muzanella as author
    Teknik Informatika XIi
    NPM : 2016143501401
    Happy Coding Broo !!! :)
}
program easy2;
uses crt;
var
   username, password, author, myNpm:string;
   loadingStart, loadingEnd, typeEnemApp:integer;
begin
	 clrscr;
     author:='Nurfirliana Muzanella';
     myNpm:='201643501401';

     write('Masukan username : '); readln(username);
     write('Masukan password : '); readln(password);
     writeln;
     write('********LOADING********');
     for loadingStart:=1 to 10 do
         writeln('*');
     writeln('Press Enter');
     writeln;
     readln;

     if username='enem' then
        if password='enem123' then
           begin
                writeln('Wellcome ', username);
                writeln('*******************************');
                writeln('***                         ***');
                writeln('***                        ****');
                writeln('***      **********************');
                writeln('***      **********************');
                writeln('***      **********************');
                writeln('***      **********************');
                writeln('***      **********************');
                writeln('***                ************');
                writeln('***               *************');
                writeln('***      **********************');
                writeln('***      **********************');
                writeln('***      **********************');
                writeln('***      **********************');
                writeln('***      **********************');
                writeln('***      **********************');
                writeln('***      **********************');
                writeln('***      **********************');
                writeln('***      **********************');
                writeln('*******************************');
                writeln;
                write('Name : ');writeln(author);
                write('Npm  : ');writeln(myNpm);
                writeln;
                delay(5000); {Wait 5000ms = 5 second}

                writeln('Pilih Soal');
                writeln('1. Parameter Formal');
                writeln('2. Parameter Aktual');
                writeln('3. Variable Global');
				writeln('4. Variable Lokal');
                writeln('*******************************');
                write('Masukkan Pilihan Soal (Number) : '); readln(typeEnemApp);
                delay(2000);
                writeln('*******************************');
                case typeEnemApp of
                     1:
                       begin
							{ Begin App 1}
                            writeln('Parameter Formal : ');
							writeln('Parameter Formal sebuah fungsi harus berupa variabel karena dia bersifat kerangka yang nanti nilainya bisa berubah selama proses program.');
							writeln;
                            writeln('tada~');
                            writeln('Happy Coding :)');
                            { End App 1 }
                       end;
                     2:
                       begin
							{ Begin App 2}
                            writeln('Parameter Aktual : ');
							writeln('Parameter Aktual merupakan parameter yang dipakai ketika sebuah fungsi dipanggil didalam program. Parameter aktual dapat berupa variabel atau konstanta..');
							writeln;
                            writeln('tada~');
                            writeln('Happy Coding :)');
                            { End App 2 }
                       end;
                     3:
                       begin
                            { Begin App 3}
                            writeln('Variable Global : ');
							writeln('Variabel Global merupakan variabel yang dapat digunakan atau dipanggil oleh semua fungsi.');
							writeln;
                            writeln('tada~');
                            writeln('Happy Coding :)');
                            { End App 3 }
                       end;
					 4:
                       begin
                            { Begin App 4}
                            writeln('Variable Lokal : ');
							writeln('Variabel Lokal adalah variabel yang hanya dapat digunakan atau dipanggil dalam satu prosedur saja.');
							writeln;
                            writeln('tada~');
                            writeln('Happy Coding :)');
                            { End App 4 }
                       end;
                end;
                readln;
           end
        else
            begin
                 writeln('Check password broo');
                 readln;
                 writeln('Sorry :p');
                 readln
            end
     else
        begin
             writeln('Check username broo');
             readln;
             writeln('Sorry :p');
             readln;
        end
end.
                                                                                                              { Copyright 2016 Nurfirliana Muzanella. All Right Reserved. Sudah dibuat dari semester 1. Sekarang berlanjut :p }
