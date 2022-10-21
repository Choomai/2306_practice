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
{In ra số(xxxx) khi loại bỏ 1 chữ số bất kì thì số đó*9=(xxxx)}