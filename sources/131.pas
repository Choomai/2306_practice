var tmp:string[4];
i,j,tmpnum:longint;
chk:boolean;
begin
  for i:=1000 to 9999 do
  begin
    chk:=false;
    for j:=1 to 4 do
    begin
      str(i,tmp);
      delete(tmp,j,1);
      val(tmp,tmpnum);
      if tmpnum*9=i then chk:=true;
    end;
    if chk=true then write(i,' ');
  end;
end.
{In ra so(xxxx) khi loai bo 1 chu so bat ki thi so do*9=(xxxx)}