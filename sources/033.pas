uses crt;
var a:string;
i:byte;
begin
  clrscr;
  write('Nhap xau:');readln(a);
  a:=' '+a+' ';
  for i:=1 to length(a) do
    if a[i]=' ' then
    begin
      a[i+1]:=(upcase(a[i]));
      write(a[i]);
    end
    else write(a[i]);
end.
{In hoa chữ cái đầu tiên của mỗi từ}