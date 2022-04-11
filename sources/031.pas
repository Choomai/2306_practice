uses crt;
var a:string;
i:byte;
begin
  clrscr;
  write('Nhap xau:');readln(a);
  a:=' '+a;
  for i:=length(a) downto 1 do
  if a[i]=' ' then
  begin
    write(copy(a,i+1,length(a)-i),' ');
    delete(a,i,length(a)-i+1);
  end;
end.
{Đảo ngược vị trí các từ trong xâu v2}