var f:text;
blklst:array[1..15] of ansistring;
y,s1,s2,tmp:ansistring;
i,j,k,n1,n2,m1,m2,k1,k2,cnta,cntblklst:longint;
label en;
begin // Chua hoan thanh
  // assign(f,'114.inp');
  // reset(f);
  // readln(f,n1,m1,k1);readln(f,s1);
  // readln(f,tmp);
  // readln(f,n2,m2,k2);readln(f,s2);
  // close(f);
  // assign(f,'114.out');
  // rewrite(f);
  // for i:=1 to n1 do
  // begin
  //   y:=s1[1];
  //   cnta:=0;
  //   for j:=2 to m1 do
  //   begin
  //     y:=y+s1[j];
  //     for k:=1 to cntblklst do if y=blklst[k] then goto en;
  //     if length(y)<=m1 then
  //     begin
  //       for k:=1 to length(y) do if y[k]='A' then inc(cnta);
  //       if cnta=k1 then
  //       begin
  //         inc(cntblklst);
  //         blklst[cntblklst]:=y;
  //       end;
  //     end;
  //   end;
  //   en:continue;
  // end;
  // for i:=1 to cntblklst do writeln(f,blklst[i]);
  // close(f);
end.