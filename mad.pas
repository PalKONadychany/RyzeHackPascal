program Mad;
uses crt,classes;

//Autorem programu je Vaybee, ja jen provedl mensi upravy

var
  SL:TStringList;
  a:string;
  b:integer;

begin
clrscr;
b:=0;
 SL := TStringList.Create;
        repeat
    writeln('Mad ? [Y/N]');
    readln(a);
  // uncomment co potrebujes a uprav
 // SL.LoadFromFile('C:\Users\vbach\Desktop\mad.txt'); //windows path
  SL.LoadFromFile('/home/pavel/pascal/mad.txt'); //linux path
    if a='Y' then writeln(SL.Text)
             else begin if a='y' then writeln(SL.Text) else  writeln('Shame.'); end;
    if a='Y' then b:=1;
    if a='y' then b:=1;
       until b=1;

    SL.Free;
    readln;
end.
