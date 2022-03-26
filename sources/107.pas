const alp='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
chrs=['A'..'Z','a'..'z'];
var f:text;
sp:array[1..127] of string;
encd,decd:string;
i,j,k,lct,tlms,spcnt:longint;
begin
  assign(f,'107.inp');
  reset(f);
  read(f,encd);
  read(f,k);
  spcnt:=1;
  for i:=1 to length(encd) do
    if encd[i]='#' then inc(spcnt) else if encd[i] in chrs then sp[spcnt]:=sp[spcnt]+encd[i];
  close(f);
  tlms:=spcnt;
  for i:=1 to spcnt-1 do
    for j:=i+1 to spcnt do if length(sp[i])=length(sp[j]) then dec(tlms);
  lct:=1;
  for i:=1 to spcnt do if length(sp[lct])<length(sp[i]) then lct:=i;
  for i:=1 to length(sp[lct]) do
  begin
    for j:=1 to 26 do if sp[lct][i]=alp[j] then break;
    dec(j,k);
    if j<0 then inc(j,26);
    decd:=decd+alp[j];
  end;
  assign(f,'107.out');
  rewrite(f);
  writeln(f,tlms);
  write(f,decd);
  close(f);
end.
{Mat ma Ceaser -k}