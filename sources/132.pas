var i,j,n,cnta,tmp,cntt:longint;
begin
  while n<2 do read(n);
  write('Cac uoc cua N la: ');
  cnta:=1;
  for i:=1 to n-1 do
  begin
    if n mod i=0 then 
    begin
      write(i,'; ');
      inc(cnta);
    end;
  end;
  writeln(n);
  writeln('So uoc cua N la: ',cnta);
  // Chua tinh so M
end.