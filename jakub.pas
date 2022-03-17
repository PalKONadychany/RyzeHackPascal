program kuba;
uses Crt;
var a,b:integer;

begin
 ClrScr;

        write('Zadej kolik mas CS:');
        readln(a);
        write('Zadej kolikata je minuta:');
        readln(b);
        writeln('Mas ', a/b:0:2, ' za minutu.');
        readln();

end.
