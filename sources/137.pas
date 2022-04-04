var bin,strtmp:string;
i,n:longint;
begin
  read(n);
  repeat
  begin
    str(n mod 2,strtmp);
    bin:=bin+strtmp;
    n:=n div 2;
  end
  until n=0;
  writeln(bin);
  strtmp:='';
  for i:=length(bin) downto 1 do strtmp:=strtmp+bin[i];
  if strtmp=bin then write('CO') else write('KHONG');
end.
{Chuyen doi n sang co so 2 va kiem tra doi xung}