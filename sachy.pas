program sachy;
uses crt;
var a,b,c,d,e,n,j:integer;
i:array[1..20]of integer;
g: char;

begin
clrscr;
writeln('zadej pocet hracu');
readln(n);
clrscr;
	for j:=1 to n do begin gotoxy(5+c,1); writeln(j); c:=c+6; end; j:=0; c:=0;
	repeat
	j:=j+1; gotoxy(1,4+d); writeln(j); d:=d+4;
	until j=n; d:=0;
	repeat
		repeat
		gotoxy(2+c,2+d);
		writeln(' _____ ');
		gotoxy(2+c,3+d);
		writeln('|');
		gotoxy(2+c,4+d);
		writeln('|');
		gotoxy(8+c,3+d);
		writeln('|');
		gotoxy(8+c,4+d);
		writeln('|');
		gotoxy(2+c,5+d);
		writeln('|');
		gotoxy(8+c,5+d);
		writeln('|');
		gotoxy(2+c,6+d);
		writeln(' _____ ');
		a:=a+1;
		c:=c+6;
		until a=n;
	c:=0; a:=0;
	d:=d+4;
	b:=b+1;
	until b=n;
	b:=0; d:=0; a:=0; c:=0;
	repeat
		e:=e+1; a:=0; c:=0;
		repeat
		gotoxy(1,(n+1)*6);
		read(g);
		case g of
		'0':begin c:=c+6; gotoxy(6*e+c-2,4+d);  writeln('0:1'); gotoxy(4+(3*d)div(2),4*e+(2*c)div(3)); writeln('1:0'); a:=a+1; b:=b+1; end;
		'1':begin c:=c+6; gotoxy(6*e+c-2,4+d);  writeln('1:0'); gotoxy(4+(3*d)div(2),4*e+(2*c)div(3)); writeln('0:1'); a:=a+1; b:=b+1; end;
		'x':begin c:=c+6; gotoxy(6*e+c-2,4+d);  writeln('0,5'); gotoxy(4+(3*d)div(2),4*e+(2*c)div(3)); writeln('0,5'); a:=a+1; b:=b+1; end;
		'%':exit;
		end;
		until a=(n-e);
	d:=d+4;
	until b=(n*(n-1)/2);
	a:=0;
	gotoxy(4,5+d+n); writeln('hrac      body     poradi');
	for a:=1 to n do begin
	//repeat
	gotoxy(4,6+d+n); writeln(a); d:=d+1;
	//until a=n;
	end;

writeln(' ');
writeln(' ');
end.
