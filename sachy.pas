program sachy;
uses crt;
var a,i,j:integer;
g: char;

begin
	clrscr;
	repeat
	read(g);
	case g of
	'1':writeln('bavalo');
	'2':writeln('kavalo');
	'x':writeln('valo');
	'5':exit;
	//else writeln('deges');
end;
until g='5';
end.
