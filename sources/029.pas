uses crt;
var a:string;
i:byte;
begin
  clrscr;
  write('Nhap xau:');readln(a);
  i:=1;
  while i<=length(a) do
  if a[i] in ['0'..'9'] then delete(a,i,1)
  else inc(i);
  write(a);
  readln;
end.
{Xoa cac chu so trong xau}