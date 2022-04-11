var i,n,t:longint;
begin
  read(n);
  t:=2;
  for i:=2 to n-1 do if odd(i) then t:=t*2 else t:=t+(t div 2);
  write(t*2);
end.
{Tính xem có bao nhiêu cách tô màu n bảng màu}
{Có 3 màu 1;2;3, odd=[1;3], even=[1;2;3], 2 ô cạnh nhau phải khác màu}