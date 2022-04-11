uses crt;
var a,b:string;
i:byte;
begin
  clrscr;
  write('Nhap xau:');readln(a);
  for i:=length(a) downto 1 do b:=b+a[i];
    if a=b then write('Xau nay doi xung') else write('Xau nay khong doi xung');
end.
{Kiểm tra xâu đối xứng}