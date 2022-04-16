program Premysl;
// uses crt, graph; // pro Win i386
uses cthreads, ptcgraph, ptccrt; // pro linux. sdlgraph pro mac,

var m,n,k,x,f,g,i,dl:integer;
gd, gm:integer;
begin
clrscr;
  Writeln('Kolik radku ma pole?');
  read(m);
  writeln('Kolik sloupcu ma pole?');
  read(n);
  gd:=vesa; (*win 0;*)
  if (m)or(n)<3 then i:=220 else if (m)or(n)>9 then i:=39 else i:=100;
  if (m)or(n)>25 then i:=20; if (m)or(n)>50 then i:=10;
  if m*n>99 then dl:=12 else dl:=200; if m*n>400 then dl:=3;
  gm:=InstallUserMode(1920,1080,16,1,10000,10000); //windows 0;
  initGraph(gd, gm,'');
  setgraphmode(gm);
  setFillStyle(1,lightred);
  g:=1;
  repeat
    repeat
    f:=f+1;
   bar(f*i,g*i,f*i+i,g*i+i);
    until f=n;
  f:=0; g:=g+1;
  until g>m;
  setFillStyle(1,blue);
  g:=0; f:=1; k:=0;
  repeat
    repeat g:=g+1; x:=x+1; delay(dl); bar(g*i,f*i,g*i+i,f*i+i); until g>=n-k;
    repeat if m<>1 then f:=f+1; x:=x+1; delay(dl); bar(g*i,f*i,g*i+i,f*i+i); until f>=m-k;
    repeat x:=x+1; if n<>1 then g:=g-1; delay(dl); bar(g*i,f*i,g*i+i,f*i+i); until g<=1+k;
    k:=k+1;
    repeat f:=f-1; x:=x+1; delay(dl); bar(g*i,f*i,g*i+i,f*i+i); until f<=1+k;
  until x>(m*n);
  closeGraph;
  readln;
end.
