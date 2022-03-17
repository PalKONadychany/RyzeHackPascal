program zip;
uses crt;
var m,n,i,j,k :integer;
a: array [1..30]of integer;
b: array [1..30]of integer;
c: array [1..30]of integer;

begin
ClrScr;
         writeln('zadej n');
         readln(n);
         writeln('zadej m');
         readln(m);
         writeln('zadej cisla v mnozine n');
         for i:=1 to n do readln(a[i]);
         writeln('zadej cisla mnoziny m');
         for j:=1 to m do readln(b[j]);
         i:=1;
         j:=1;
         k:=1;
         repeat if a[i]>b[j]    then begin c[k]:=b[j]; j:=j+1; k:=k+1; end
                                else begin c[k]:=a[i]; i:=i+1; k:=k+1; end
         until (i>n) or (j>m);
         if j>m then repeat c[k]:=a[i]; k:=k+1; i:=i+1 until i>n
                else repeat c[k]:=b[j]; k:=k+1; j:=j+1 until j>m;
                writeln('---');
         for k:=1 to n+m do writeln(c[k]);
         writeln('mad??');
         readln();
end.