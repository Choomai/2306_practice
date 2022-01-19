program Windows_95_Keygen;
uses crt;
var a,c,d,x,b,y,z:Longint;
begin
  clrscr;
  x:=0;
  writeln('Windows 95 OEM Keygen');
  write('Type number of key you want to generate:');readln(x);
  for z:=1 to x do
  begin
    a:=random(366)+1;
    y:=random(2);
    if y=0 then b:=random(5)+95 else
    b:=random(4);
    repeat c:=random(1000000) until c mod 7<>0;
    d:=random(100000);
    if a>99 then write(a) else
      if a>9 then write('0',a) else
        if a>0 then write('00',a);
    if b<10 then write('0',b) else
      write(b);
    write('-OEM-0');
    if c>99999 then write(c) else
      if c>9999 then write('0',c) else
        if c>999 then write('00',c) else
          if c>99 then write('000',c) else
            if c>9 then write('0000',c) else
              if c>0 then write('00000',c);
    if d>9999 then write('-',d) else
      if d>999 then write('-0',d) else
        if d>99 then write('-00',d) else
          if d>9 then write('-000',d) else
            if d>0 then write('-0000',d);
    writeln;
    end;
end.