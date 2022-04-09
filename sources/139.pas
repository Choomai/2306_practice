var i,n,t1,t2:longint;
begin
  read(n);
  t1:=2;t2:=2;
  for i:=2 to n-1 do
  begin
    if odd(i) then
    begin
      t1:=t1*2;
      t2:=t2*2;
    end
    else
    begin
      t1:=t1+(t1 div 2);
      t2:=t2+(t2 div 2);
    end;
  end;
  write(t1+t2);
end.
{Tinh xem co bao nhieu cach to mau n bang mau}
{Co 3 mau 1;2;3, odd=[1;3], even=[1;2;3], 2 o canh nhau phai khac mau}