var f:text;
a:ansistring;
wrd:array[1..5000] of string;
chr:char;
i,cntwrd:integer;
begin
  assign(f,'110.inp');
  reset(f);
  readln(f,a);
  read(f,chr);
  close(f);
  cntwrd:=1;
  while a[1]=#32 do delete(a,1,1);
  while a[length(a)]=#32 do delete(a,length(a),1);
  while pos(#32#32,a)<>0 do delete(a,pos(#32#32,a),1);
  a:=a+#32;
  for i:=1 to length(a) do
    if a[i]=#32 then inc(cntwrd) else wrd[cntwrd]:=wrd[cntwrd]+a[i];
  assign(f,'110.out');
  rewrite(f);
  for i:=1 to cntwrd do
    if wrd[i][1]=chr then writeln(f,wrd[i]);
  close(f);
end.
{In các từ bắt đầu bằng chr}