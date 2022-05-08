program sachy;
uses crt;
var a,b,c,d,e,n,j,i,q:integer;
m:array[1..100]of real;
g: char; y:real;
x,z: array[1..20]of integer;

begin
clrscr;
repeat
	writeln('Sachova tabulka. Po zadani poctu hracu pouzivejte tyto klavesy:');
	writeln('1: zapise vyhru, 0: zapise prohru, x:remiza, %:konec');
	writeln('');
	writeln('zadej pocet hracu');
	readln(n);
	if n<2 then begin clrscr; writeln('Musi se zucastnit alespon 2 hraci'); end;
	if n>12 then begin writeln('tabulka je urcena pro turnaje do deseti hracu.'); writeln('Pri vyssich poctech se tabulka muze zdeformovat, pokud mozno, zmensete font a restartujte'); writeln('kliknutim pokracujte'); readln(); end;
until n>1;
clrscr;
	for j:=1 to n do begin gotoxy(5+c,1); writeln(j); c:=c+6; end; j:=0; c:=0;
	repeat
	j:=j+1; gotoxy(1,4+d); writeln(j); d:=d+4;
	until j=n; d:=0;
	repeat
		repeat
			gotoxy(2+c,2+d); writeln(' _____ ');
			gotoxy(2+c,3+d); writeln('|');
			gotoxy(2+c,4+d); writeln('|');
			gotoxy(8+c,3+d); writeln('|');
			gotoxy(8+c,4+d); writeln('|');
			gotoxy(2+c,5+d); writeln('|');
			gotoxy(8+c,5+d); writeln('|');
			gotoxy(2+c,6+d); writeln(' _____ ');
			a:=a+1; c:=c+6;
		until a=n;
		c:=0; a:=0; i:=0; d:=d+4; b:=b+1;
	until b=n;
	b:=0; d:=0; a:=0; c:=0; q:=1;
	repeat
		e:=e+1;  a:=0; c:=0;
		repeat

			gotoxy(1,(n+1)*5); writeln('                                                            ');
			gotoxy(1,(n+1)*5-1); writeln('zapas hrace ',q,' vs hrac ',a+q+1,'  ');
			gotoxy(1,(n+1)*5);
			read(g);
			case g of
			'0':begin c:=c+6; gotoxy(6*e+c-2,4+d);  writeln('0:1'); gotoxy(4+(3*d)div(2),4*e+(2*c)div(3)); writeln('1:0'); a:=a+1; b:=b+1; i:=i+1; m[q+i]:=m[q+i]+1; end;
			'1':begin c:=c+6; gotoxy(6*e+c-2,4+d);  writeln('1:0'); gotoxy(4+(3*d)div(2),4*e+(2*c)div(3)); writeln('0:1'); a:=a+1; b:=b+1; i:=i+1; m[q]:=m[q]+1; end;
			'x':begin c:=c+6; gotoxy(6*e+c-2,4+d);  writeln('0,5'); gotoxy(4+(3*d)div(2),4*e+(2*c)div(3)); writeln('0,5'); a:=a+1; b:=b+1; i:=i+1; m[q+i]:=m[q+i]+0.5; m[q]:=m[q]+0.5; end;
			'%':exit; end;
		until a=(n-e);
		d:=d+4;  q:=q+1; i:=0;
	until b=(n*(n-1)/2);
	a:=0; q:=1; d:=d-n;
	gotoxy(1,(n+1)*5); writeln('                                                            ');
	gotoxy(1,(n+1)*5-1); writeln('                                ');
	gotoxy(5,9+d+n); writeln('hrac      body     poradi');
	for a:=1 to n do begin
		gotoxy(6,10+d+n); writeln(a); d:=d+1;
	end; d:=d-n; i:=0;
	for q:=1 to n do begin
		gotoxy(15,10+d+n); writeln(m[q]:0:1); d:=d+1;
	end; d:=d-n;
	a:=0; b:=0; c:=0; e:=e+0;
	repeat
		q:=1+a;
		y:=m[q];
		q:=0; e:=0;
		repeat
			q:=q+1;
			if m[q]>y then c:=c+1; if m[q]=y then e:=e+1
		until q=n;
		a:=a+1; x[a]:=c+1; z[a]:=x[a]+e-1; c:=0; e:=0;
	until a=n; q:=0;

	repeat
	q:=q+1;
	if x[q]=z[q] then begin gotoxy(26,10+d+n); writeln(x[q]); d:=d+1; end;
	if x[q]<>z[q] then begin gotoxy(26,10+d+n); writeln(x[q],' - ',z[q]); d:=d+1; end;
	until q=n;
writeln(' ');
writeln(' ');
end.
