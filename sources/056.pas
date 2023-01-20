var f:text;
s:string;
i,dem,max,vt:byte;
begin
  assign(f,'056.inp');
  reset(f);
  read(f,s);
  close(f);
  for i:=1 to length(s) do if s[i] in ['0'..'9'] then
    begin
      inc(dem);
      if dem>max then
      begin
        max:=dem;
        vt:=i;
      end;
    end
    else dem:=0;
  assign(f,'056.out');
  rewrite(f);
  writeln(f,max); // In ra độ dài của số
  write(f,copy(s,vt-max+1,max)); // In ra số đó trong xâu
  close(f);
end.
{Tính tổng các chữ số trong dãy số lớn nhất trong xâu}