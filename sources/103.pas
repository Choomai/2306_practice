uses crt;
var tmp:string;
i,j,l,k,n,cnt,dem,fnl,ntmp,cnttmp:longint;
chktmp:boolean;
begin
  write('Nhap n:');readln(n);
  write('Cac so sieu nguyen to co ',n,' chu so la: ');
  fnl:=1;
  for i:=2 to n do fnl:=fnl*10;
  for i:=fnl to fnl*10-1 do
  begin
    dem:=0;
    for j:=1 to i do if i mod j=0 then inc(dem);
    if dem=2 then
    begin
      str(i,tmp);
      for l:=2 to n do
      begin
        cnttmp:=0;
        delete(tmp,length(tmp),1);
        val(tmp,ntmp);
        for k:=1 to ntmp do if ntmp mod k=0 then inc(cnttmp);
        if cnttmp=2 then chktmp:=true else
        begin
          chktmp:=false;
          break;
        end;
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