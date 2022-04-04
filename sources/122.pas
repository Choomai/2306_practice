var f:text;
ti:array[1..1000] of integer;
i,j,n,tmp,lct:integer;
begin
  assign(f,'122.inp');
  reset(f);
  readln(f,n);
  for i:=1 to n do readln(f,ti[i]);
  close(f);
  assign(f,'122.out');
  rewrite(f);
  for i:=1 to 4 do
  begin
    tmp:=30000;
    for j:=1 to n do if tmp>ti[j] then
    begin
      tmp:=ti[j];
      lct:=j;
    end;
    write(f,lct,' ');
    ti[lct]:=30000;
  end;
  close(f);
end.
{Tim 4 nguoi co ti nho nhat va in ra STT trong day}