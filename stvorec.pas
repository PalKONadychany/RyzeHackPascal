program magi;
uses crt;
var i,j,n:integer;
a:array[1..20,1..20]of integer;
X,Q,W,S,D:integer;

begin
ClrScr;
        writeln('pocet poli v rade/sloupci');
        readln(n);
        X:=0;
        for i:=1 to n do
                for j:=1 to n do begin
                        writeln('napis radek ',i,' a sloupec ',j);
                        read(a[i,j]);
                end;

       //tady su rady a sloupce, beztak to aj funguje jak ma
       Q:=0; j:=0;
       repeat
        j:=j+1;
        Q:=Q+a[i,j];
        i:=0;S:=0;
        repeat
                i:=i+1;
                S:=S+a[i,j];
        until i=n;
       until j=n;
       if S=Q then X:=X+1;

       //diagonala zprava do leva
       i:=0; j:=0;
       repeat
        i:=i+1; j:=(n+1-i);
        W:=W+a[i,j];
       until i=n;
       if W=Q then X:=X+1;

       //diagonala zleva do prava1š

       j:=0;i:=0;
       repeat
       i:=i+1; j:=j+1;
       D:=D+a[i,j];
       until j=n;
       if D=S then X:=X+1;

       if X=3 then writeln('hola ctverec')
        else writeln('dylin to nevychadza https://youtu.be/0VoPOcPuMusP');
        readln(); readln();
end.

