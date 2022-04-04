uses crt;
var a,nt:array[1..100] of longint;
tbc:real;
n,i,j,dtbc,dnt:byte;
begin
  clrscr;
  write('Nhap n:');readln(n);
  for i:=1 to n do
  begin
    write('Nhap a[',i,']:');
    readln(a[i]);
  end;
  for i:=1 to n do
    if a[i]>0 then
    begin
      dnt:=0;
      tbc:=tbc+a[i];
      inc(dtbc);
      for j:=1 to a[i] do if a[i] mod j=0 then inc(dnt);
      if dnt=2 then nt[i]:=a[i];
    end;
  writeln('Tb cong cua cac pt>0 trong day so:',tbc/dtbc:4:2);
  write('Cac so nguyen to:');
  for i:=1 to n do if nt[i]<>0 then write(nt[i],' ');
end.