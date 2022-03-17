program test2; //vytiskne nejvetsi,nejmensi a arit. prumer
uses crt;
var n,i :integer;
        a: array [1..10]of real;
        P: real;
        M: real;
        Q: real;
begin
        ClrScr;
        i:=1;
        writeln('kolik cisel');
        readln(n);
        writeln('zadej cisla');
        readln(a[i]);
        P:=a[i];
        M:=a[i];
        Q:=a[i];
repeat
        i:=i+1;
        readln(a[i]);
        P:=P+a[i];
if a[i]>M then M:=a[i]
else if Q>a[i] then Q:=a[i];
until i=n;
writeln('nejvetsi cislo je ',M:0:1,' nejmensi cislo je ',Q:0:1,' prumer je ', P/n:0:3);
end.
