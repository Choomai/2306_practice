var f:text;
x,y:string;
i,j,tam:byte;
chkx,chky:array[0..9] of boolean;
begin
  assign(f,'85.inp');
  reset(f);
  readln(f,x);
  read(f,y);
  close(f);
  for i:=0 to 9 do
  begin
    for j:=1 to length(x) do
    begin
      val(x[j],tam);
      if tam=i then chkx[i]:=true;
    end;
    for j:=1 to length(y) do
    begin
      val(y[j],tam);
      if tam=i then chky[i]:=true;
    end;
  end;
  assign(f,'85.out');
  rewrite(f);
  for i:=0 to 9 do if (chkx[i]=true) and (chky[i]=true) then write(f,i);
  close(f);
end.