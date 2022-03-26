var d,k,n:longint;
begin
  read(n,k);
  repeat
  begin
    inc(k,k);
    inc(d);
  end
  until k>n;
  write(d);
end.
{Gia cong san pham}