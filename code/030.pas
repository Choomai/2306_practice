uses crt;
var a,b,tu:string;
i:byte;
begin
  clrscr;
  write('Nhap xau:');readln(a);
  i:=1;b:='';
  while i<=length(a) do
  begin
    tu:='';
    while (i<=length(a)) and (a[i]<>' ') do
    begin
      tu:=tu+a[i];
      inc(i);
    end;
    b:=tu+' '+b;
    inc(i);
  end;
  write(b);
  readln;
end.
{Dao nguoc vi tri cac tu trong xau}