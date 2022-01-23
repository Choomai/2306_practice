const
var f:text;
tam:array[1..5] of string;
h1,h2,m1,m2:string;
i,re,hh1,hh2,mm1,mm2,crct,mcrct,vt:byte;
begin
  assign(f,'079.inp');
  reset(f);
  for i:=1 to 5 do readln(f,tam[i]);
  close(f);
  // Chua hoan thanh
  assign(f,'079.out');
  rewrite(f);
  write(f,hh1,hh2,':',mm1,mm2);
  close(f);
end.