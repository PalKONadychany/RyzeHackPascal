program matsloupec;
uses crt;

var i,j,m,n:integer;
X:real;
a:array[1..20,1..20]of real;

begin
ClrScr;
        writeln('radku?');
        readln(m);
        writeln('sloupcu?');
        readln(n);

        for j:=1 to n do begin  X:=0;
                                for i:=1 to m do begin   writeln('napis cislo v ',i,' radku a ',j, 'slouci');
                                                        read(a[i,j]);

                                                        if a[i,j]>X then X:=a[i,j];
                                                        end;
                                writeln('nejvetsi cislo ve sloupci je ',X:0:2);
                                end;
        writeln();
end.