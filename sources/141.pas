var f:text;
encd:string;
word:array[1..50] of string;
i,j:integer;
map:array[1..50] of byte;
cntmap,cntword,cntchar:byte;
begin
  assign(f,'141.inp');reset(f);
  readln(f,encd);
  repeat
  begin
    inc(cntmap);
    read(f,map[cntmap]);
  end
  until eof(f);
  close(f);
  encd:=encd+#32;
  for i:=1 to length(encd) do
    if encd[i]=#32 then
    begin
      inc(cntword);
      for j:=i-cntchar to i do word[cntword]:=word[cntword]+encd[j];
      cntchar:=0;
    end
    else inc(cntchar);
  for i:=1 to cntmap do write(word[map[i]]);
end.
{Mã hóa https://youtu.be/ohv0QQU1wX4}