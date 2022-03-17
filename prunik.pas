program prunik;
uses crt;
var m,o,n,i,j,k :integer;
a: array [1..30]of integer;
b: array [1..30]of integer;
c: array [1..30]of integer;

begin
ClrScr;
        Writeln('zadej n');
        readln(n);
        writeln('zadej m');
        readln(m);
        writeln('zadej cisla v n');
        for i:=1 to n do readln(a[i]);
        writeln('zadej cisla mnoziny m');
        for j:=1 to m do readln(b[j]);
        i:=1;j:=1;k:=1;

         repeat
         readln(a[i]); readln(b[j]);
                if a[i]=b[j] then begin c[k]:=a[i]; j:=1; i:=i+1; k:=k+1; end
                else j:=j+1;
        until (j=m) or ( i=n);
        writeln('-',k);;
        for k:=1 to m  do writeln(c[k]);
        readln()
end.
