uses crt;
var a:string;
begin
clrscr;
write('Nhap xau:');readln(a);
while a[1]=#32 do delete(a,1,1);
while a[length(a)]=#32 do delete(a,length(a),1);
while pos(#32#32,a)<>0 do delete(a,pos(#32#32,a),1);
write('Sau khi xoa ki tu trang:',a);
readln;
end.
{Xoa ki tu trang thua trong xau}