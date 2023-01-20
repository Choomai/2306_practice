uses crt;
var a:string;
i,dem:byte;
begin
  clrscr;
  write('Nhap xau:');readln(a);
  while a[1]=#32 do delete(a,1,1);
  while a[length(a)]=#32 do delete(a,length(a),1);
  while pos(#32#32,a)<>0 do delete(a,pos(#32#32,a),1);
  a:=a+' ';
  for i:=1 to length(a) do if a[i]=' ' then inc(dem);
  write('Xau co ',dem,' tu');
end.
{Kiểm tra xâu có mấy từ}