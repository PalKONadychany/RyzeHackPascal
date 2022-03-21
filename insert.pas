program insert;
uses crt;
var i,j,k,n :integer;
a:array[1..20]of integer;

begin
ClrScr;
        writeln('kolik cisel');
        readln(n);
        writeln('jake mas cisla');
        for i:=1 to n do read(a[i]);
        for i:=2 to n do begin
                j:=i; k:=a[i];
                if k<a[i-1] then begin
                        repeat
                        a[j]:=a[j-1]; j:=j-1;
                        until (j=1)or(k>a[j-1]);
                        end;

                a[j]:=k;
                end;
writeln('____');
                for i:=1 to n do writeln(a[i],',');
readln();
end.

//Proste jakub. Program tridi cisla pomoci InsertSortu - seradi je od nejmensiho po nejvtesi.
