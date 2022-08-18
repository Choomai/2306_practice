program Office_9597_Keygen;
var b:array[1..7] of integer;
a,i,x,c,z:integer;
begin
  writeln('Office 95-97 Keygen');
  write('Type number of key you want to gerenate:');readln(x);
  for z:=1 to x do
  begin
    a:=random(1000);
    if a>99 then write(a,'-') else
      if a>9 then write('0',a,'-') else
        if a>=0 then write('00',a,'-');
    for i:=1 to 7 do b[i]:=random(10);
    c:=b[1]+b[2]+b[3]+b[4]+b[5]+b[6]+b[7];
    repeat
    begin
      for i:=1 to 7 do b[i]:=random(10);
      c:=b[1]+b[2]+b[3]+b[4]+b[5]+b[6]+b[7];
    end
    until c mod 7<>0;
    for i:=1 to 7 do write(b[i]);
    writeln;
  end;
end.