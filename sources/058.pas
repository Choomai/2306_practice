var f:text;
z,tam2,vt:array[1..10000] of longint;
a,b,aa,bb,tam1,tong,i,j,k:longint;
dem,csnt,maxvt:byte;
label 1,2,kt;
begin
  assign(f,'058.inp');
  reset(f);
  read(f,a,b);
  close(f);
  tam1:=1;
  for j:=2 to 10000 do
  begin
    dem:=0;
    for i:=1 to j do if j mod i=0 then inc(dem);
    if dem=2 then
    begin
      z[tam1]:=j;
      inc(tam1);
    end;
  end;
  aa:=a;
  bb:=b;
  for i:=2147483647 downto 1 do
  begin
    if (aa mod i=0) and (bb mod i=0) then
    begin
      aa:=aa div i;
      bb:=bb div i;
    end;
  end;
  for j:=1 to a do if z[j]>a then break;
  tam1:=0;
  assign(f,'058.out');
  rewrite(f);
  for i:=a+1 to b-1 do
    for j:=j to 1000 do
      if z[j]<b then
      begin
        inc(csnt);
        inc(k);
        tam2[k]:=z[j];
        inc(tam1);
        vt[tam1]:=j;
      end;
  for i:=1 to 100 do if vt[i]=0 then break else inc(maxvt);
  if csnt=0 then goto 2;
  for i:=1 to maxvt do tong:=tong+sqr(z[vt[i]]);
  1:write(f,csnt,' ');
  writeln(f,tong);
  writeln(f,tong*28022019);
  write(f,aa,'/',bb);
  goto kt;
  2:writeln(f,'Khong');
  write(f,aa,'/',bb);
  kt:close(f);
end.