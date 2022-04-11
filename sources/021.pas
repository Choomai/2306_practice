uses crt;
var a:array[1..100,1..100] of longint;
max,min:longint;
i,j,n,m,vt,z:byte;
begin
  clrscr;
  write('Nhap hang:');readln(n);
  write('Nhap cot:');readln(m);
  for i:=1 to n do
    for j:=1 to m do
    begin
      write('Nhap a[',i,',',j,']:');
      readln(a[i,j]);
    end;
  for i:=1 to n do
  begin
    min:=a[i,1];
    for j:=2 to n do
      if min>=a[i,j] then
      begin
        min:=a[i,j];
        vt:=j;
      end;
    max:=a[1,vt];
    for j:=2 to n do if max<=a[j,vt] then max:=a[j,vt];
    if max=min then writeln('a[',i,',',vt,']:=',a[i,vt],' la phan tu yen ngua')
      else inc(z);
  end;
  if z=n then write('Khong co phan tu yen ngua!');
end.
{Phần tử yên ngựa(min=m,max=n)}