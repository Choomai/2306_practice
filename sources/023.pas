uses crt;
var a:string;
i:byte;
begin
  clrscr;
  write('Nhap xau:');readln(a);
  for i:=1 to length(a) do a[i]:=upcase(a[i]);
  write(a);
end.
{In hoa tat ca chu trong xau}