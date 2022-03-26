uses crt;
const s1='123456789';
var a,k,i,j,tmpa:longint;
begin
  clrscr;
  read(k);
  for i:=1 to k do
  begin
    readln(a);
    for j:=1 to (a-1) div 9 do write('1234567890');
    tmpa:=(a-1) mod 9;
    for j:=1 to tmpa do write(chr(48+j));
    for j:=tmpa+1 downto 2 do write(chr(48+j));
    for j:=1 to (a-1) div 9 do write('098765432');
    writeln(1);
  end;
end.
{In sqr(k chu so 1)}