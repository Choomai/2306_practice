var f:text;
m:array[1..10000] of longint;
t,i,j,tmp,utmp:longint;
begin
  assign(f,'120.inp');
  reset(f);
  read(f,t);
  for i:=1 to t do readln(f,m[i]); 
  close(f);
  assign(f,'120.out');
  rewrite(f);
  for i:=1 to t do
  begin
    tmp:=2;utmp:=0;
    for j:=1 to m[i] do if m[i] mod j=0 then inc(utmp);
    write(f,utmp,' ');
    repeat
    begin
      while m[i] mod tmp<>0 do inc(tmp);
      write(f,tmp);
      m[i]:=m[i] div tmp;
      if m[i]>1 then write(f,'*');
    end 
    until m[i]=1;
    writeln(f);
  end;
  close(f);
end.
{Nguyen to https://youtu.be/AQshvrC3tfw}