var f:text;
i,n:integer;
a:array[1..10000] of byte;
k:array[1..100] of byte;
begin
  assign(f,'140.inp');reset(f);
  readln(f,n);
  for i:=1 to n do read(f,a[i]);
  close(f);
  for i:=1 to n do inc(k[a[i]]);
  assign(f,'140.out');rewrite(f);
  for i:=1 to 100 do if k[i]>0 then writeln(f,i,' ',k[i]);
  close(f);
end.
{In ra tần số của mảng a}