var f:text;
tmp:string;
i,row,clm:longint;
chartmp:array[1..8] of byte;
const base26='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
begin
  assign(f,'078.inp');reset(f);
  read(f,tmp);
  delete(tmp,1,1);
  for i:=1 to length(tmp) do 
    if tmp[i]='C' then
    begin
      val(copy(tmp,1,i-1),row);
      delete(tmp,1,i);
      val(tmp,clm);
    end;
  close(f);
  repeat
  begin
    dec(clm);
    inc(chartmp[1]);
    if chartmp[1]=27 then 
    begin
      inc(chartmp[2]);
      chartmp[1]:=1;
    end;
    if chartmp[2]=27 then
    begin
      inc(chartmp[3]);
      chartmp[2]:=1;
    end;
    if chartmp[3]=27 then
    begin
      inc(chartmp[4]);
      chartmp[3]:=1;
    end;
    if chartmp[4]=27 then
    begin
      inc(chartmp[5]);
      chartmp[4]:=1;
    end;
    if chartmp[5]=27 then
    begin
      inc(chartmp[6]);
      chartmp[5]:=1;
    end;
    if chartmp[6]=27 then
    begin
      inc(chartmp[7]);
      chartmp[6]:=1;
    end;
    if chartmp[7]=27 then
    begin
      inc(chartmp[8]);
      chartmp[7]:=1;
    end;
  end
  until clm=0;
  for i:=8 downto 1 do if chartmp[i]<>0 then write(base26[chartmp[i]]);
  write(row);
end.
{Chuyen R1C1 sang A1}