program prunik2;
uses crt;
var m,o,n,i,j,k :integer;
a: array [1..10]of integer;
b: array [1..10]of integer;
q:  boolean = false;
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
        i:=0;j:=0;k:=0;
         writeln('---');
         writeln('Tyto cisla se vysytuji v obou mnoinach');
         repeat

                 i:=i+1; q:= false;
                 repeat
                        j:=j+1;
                        if a[i]=b[j] then begin writeln(a[i]); q:= true; end
                until (j=m)or(q=true);
         until i=n;
end.
