program Tenis;
uses crt;

var
  a,b,c,x,y,z,t:integer;
  //do it t:string, mosis dat ty cisla do uvozovek
  i,j,n,m: string;

begin
ClrScr;
writeln('TENIS');
writeln(' ');
writeln('Zadej jmeno pro Hrace 1');
readln(m);
writeln('Zadej jmeno pro Hrace 2');
readln(n);
Writeln('--------------------------------------------');
writeln('pouziti');
writeln('pokud hrac ',m,' skoruje, stiskni klavesu 1');
writeln('pokud hrac ',n,' skoruje, stiskni klavesu 2');
writeln('pro ukonceni programu stiskni klavesu 0');
Writeln('--------------------------------------------');
repeat
  repeat
    repeat
      writeln('Kdo ziskal bod? hrac 1/2?');
      read(t);
      case t of
       1:a:=a+1;
       2:x:=x+1;
       5:begin b:=5; y:=5; end;
       0:begin writeln('zapas prerusen, koncim'); exit; end;
        else writeln('Chyba: Spantna klavesa. Stiskni  1 nebo 2 pro zvyseni skore. Pro ukonceni stiskni 0 ');
      end;
      if a=0 then j:='0'; if x=0 then i:='0';
      if a=1 then j:='15'; if x=1 then i:='15';
      if a=2 then j:='30'; if x=2 then i:='30';
      if a=3 then j:='40'; if x=3 then i:='40';
      if (a=4)and(x=4) then begin  a:=3; x:=3; i:='40';j:='40'; end;
      if (a=4)and(x=3) then begin j:='AD'; i:=' '; end;
      if (a=3)and(x=4) then begin i:='AD'; j:=' '; end;
      if (b=6)and(b=y) then begin
	      clrscr;
	      Writeln('--------------------------------------------');
	      Writeln('Stav Hry:');
	      writeln(m,'(Hrac 1): sety:',c, ' gamy:',b,' body:',a);
	      writeln(n,'(Hrac 2): sety:',z, ' gamy:',y,' body:',x);
	      Writeln('--------------------------------------------');


      repeat  writeln('tiebraker'); writeln('kdo dal bod? hrac 1/2');
	      readln(t);  case t of 1:a:=a+1; 2:x:=x+1; 0:begin writeln('zapas prerusen, koncim'); exit; end; else writeln('chyba'); end;
	      clrscr;
	      Writeln('--------------------------------------------');
	      Writeln('Stav Hry:');
	      writeln(m,'(Hrac 1): sety:',c, ' gamy:',b,' body:',a);
	      writeln(n,'(Hrac 2): sety:',z, ' gamy:',y,' body:',x);
	      Writeln('--------------------------------------------');
	      until (a>=7)and(a>x+1)or(x>6)and(x>a+1);
      if (a>=7)and(a>x) then c:=c+1
  else z:=z+1;
        a:=0; x:=0; i:='0'; j:='0'; b:=0; y:=0;
	end;


      clrscr;
      Writeln('--------------------------------------------');
      Writeln('Stav Hry:');
      writeln(m,'(Hrac 1): sety:',c, ' gamy:',b,' body:',j);
      writeln(n,'(Hrac 2): sety:',z, ' gamy:',y,' body:',i);
      Writeln('--------------------------------------------');
    until (a>3)and(a>x+1) or (x>3)and(x>a+1);


    if (a>3)and(a>x+1) then b:=b+1
    else y:=y+1;
    a:=0; x:=0; i:='0'; j:='0';
    clrscr;
    Writeln('--------------------------------------------');
    Writeln('Stav hry:');
    writeln(m,'(Hrac 1): sety:',c, ' gamy:',b,' body:',j);
    writeln(n,'(Hrac 2): sety:',z, ' gamy:',y,' body:',i);
    Writeln('--------------------------------------------');
 //   if(b=6)and(y=6) then  clrscr;
  until (b=6)and(b>y+1) or (y=6)and(y>b+1)or(b=7)or(y=7);

 if (b>y)

  then c:=c+1
  else z:=z+1;
  b:=0;y:=0;
  clrscr;
  Writeln('--------------------------------------------');
  Writeln('Stav hry:');
  writeln(m,'(Hrac 1): sety:',c, ' gamy:',b,' body:',j);
  writeln(n,'(Hrac 2): sety:',z, ' gamy:',y,' body:',i);
  Writeln('--------------------------------------------');


until (c=3) or (z=3);

if c=3 then writeln('Vyhrava ',m)
else writeln('Vyhrava' ,n);

readln();
end.
