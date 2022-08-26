uses crt;
var tmp:string;
i,j,k,n,cnt,dem,fnl,ntmp:longint;
chktmp:boolean;
function chk_snt(inp: longint):boolean;
begin
  dem:=0;
  for j:=1 to inp do if inp mod j=0 then inc(dem);
  if dem=2 then chk_snt:=true else chk_snt:=false;
end;
begin
  write('Nhap n:');readln(n);
  write('Cac so sieu nguyen to co ',n,' chu so la: ');
  fnl:=1;
  for i:=2 to n do fnl:=fnl*10;
  for i:=fnl to fnl*10-1 do // Chuyển đổi sang dãy số có n chữ số và lặp lại
  begin
    if chk_snt(i)=true then // Kiểm tra số nguyên tố
    begin
      str(i,tmp);
      for k:=2 to n do
      begin
        delete(tmp,length(tmp),1);
        val(tmp,ntmp); // Loại bỏ chữ số đầu tiên
        if chk_snt(ntmp) then chktmp:=true else
        begin
          chktmp:=false;
          break;
        end; // Nếu không phải số nguyên tố thì thoát vòng lặp và tăng i
      end;
      if chktmp=false then continue else 
      begin
        write(i,' ');
        inc(cnt);
      end;
    end;
  end;
  writeln;
  write('Tat ca co ',cnt,' so');
end.
{In so sieu nguyen to co N so}