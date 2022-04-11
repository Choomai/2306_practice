var f:text;
i,j,k,n,cnt:integer;
a:array[1..100] of byte;
begin
  assign(f,'142.inp');reset(f);
  repeat
  begin
    n:=0;cnt:=0;
    repeat
    begin
      inc(n);
      read(f,a[n]);
    end;
    until eoln(f);
    for i:=1 to n-2 do
      for j:=i+1 to n-1 do
        for k:=j+1 to n do
          if (a[i]*a[j]*a[k]) mod (a[i]+a[j]+a[k])=0 then inc(cnt);
    write(cnt);
  end
  until eof(f);
  close(f);
end.
{Mật khẩu https://youtu.be/ohv0QQU1wX4}