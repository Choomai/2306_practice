var f:text;
tmp:string;
i,row,clm:longint;
chartmp:array[1..8] of byte;
const base26='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
procedure incnxt(fst:byte);
begin
  inc(chartmp[fst+1]);
  chartmp[fst]:=1;
end;
begin
  assign(f,'078.inp');reset(f);
  read(f,tmp);
  delete(tmp,1,1);
  for i:=1 to length(tmp) do // Lấy số cột từ file input.
    if tmp[i]='C' then
    begin
      val(copy(tmp,1,i-1),row);
      delete(tmp,1,i);
      val(tmp,clm);
    end;
  close(f);
  repeat
  // Nếu số cột tạm thời = 27, tăng chỉ số trước đó lên 1. Cứ thế lặp lại cho tới khi nào hết số cột được nhập vào.
  // Ví dụ từ Z sang AA, reset chữ đầu tiên về 1 (=A) và tăng chữ thứ 2 lên 1 (A > B > C >...)
  begin
    dec(clm);
    inc(chartmp[1]);
    if chartmp[1]=27 then incnxt(1);
    if chartmp[2]=27 then incnxt(2);
    if chartmp[3]=27 then incnxt(3);
    if chartmp[4]=27 then incnxt(4);
    if chartmp[5]=27 then incnxt(5);
    if chartmp[6]=27 then incnxt(6);
    if chartmp[7]=27 then incnxt(7);
  end
  until clm=0;
  for i:=8 downto 1 do if chartmp[i]<>0 then write(base26[chartmp[i]]); // Convert sang Base26 và in ngược + chỉ in những giá trị không phải 0.
  write(row);
end.
{Chuyển R1C1 sang A1}