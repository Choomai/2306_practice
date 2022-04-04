uses crt;
var n:array[1..20] of integer;
a,b:array[1..20] of string;
i,j:byte;
begin
  clrscr;
  writeln('99>n<10000');
  for i:=1 to 20 do
  begin
    write('Nhap n[',i,']:');
    readln(n[i]);
  end;
  for i:=1 to 20 do str(n[i],a[i]);
  for j:=1 to 20 do
    for i:=length(a[j]) downto 1 do b[j]:=b[j]+a[j][i];
  for i:=1 to 20 do if a[i]=b[i] then write(n[i],' ');
  write('la palindrome');
end.
{Palindrome}
