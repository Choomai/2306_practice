const lib:array[1..26] of char=('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
var f:text;
a,encd,b,decd:string;
i,j:byte;
begin
  assign(f,'091.inp');
  reset(f);
  readln(f,a);
  read(f,b);
  close(f);
  for i:=1 to length(a) do
  begin
    for j:=1 to 26 do if a[i]=lib[j] then break;
    inc(j,3);
    if j>26 then dec(j,26);
    encd:=encd+lib[j];
  end;
  for i:=1 to length(b) do
  begin
    for j:=1 to 26 do if b[i]=lib[j] then break;
    dec(j,3);
    if j>26 then inc(j,26);
    decd:=decd+lib[j];
  end;
  assign(f,'091.out');
  rewrite(f);
  writeln(f,encd);
  write(f,decd);
  close(f);
end.
{Mat ma Caesar +3 va -3}