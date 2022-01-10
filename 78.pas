var f:text;
tam:array[1..6] of string[1];
tam1,tam2,kq:string;
m:int64;
i,j,k,l,o,p:longint;
const base26='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
label chr7,chr6,chr5,chr4,chr3,chr2,chr1,deb;
begin // Chua hoan thanh
  assign(f,'78.inp');
  reset(f);
  read(f,tam1);
  tam2:=tam1;
  delete(tam1,1,1);
  for i:=1 to length(tam1) do 
    if tam1[i]='C' then 
    begin
      delete(tam1,i,length(tam1));
      break;
    end;
  delete(tam2,1,i+1);
  val(tam2,m);
  close(f);
  assign(f,'78.out');
  rewrite(f);
  if m>321272406 then goto chr7 else
    if m>12356630 then goto chr6 else
      if m>475254 then goto chr5 else
        if m>18278 then goto chr4 else
          if m>702 then goto chr3 else
            if m>26 then goto chr2 else
              if m<=26 then goto chr1;
  // chr7:
  
  // kq:=tam[6]+tam[5]+tam[4]+tam[3]+tam[2]+tam[1]+base26[m];
  // goto deb;
  // chr6:
  
  // kq:=tam[5]+tam[4]+tam[3]+tam[2]+tam[1]+base26[m];
  // goto deb;
  // chr5:

  // kq:=tam[4]+tam[3]+tam[2]+tam[1]+base26[m];
  // goto deb;
  // chr4:
  
  // kq:=tam[3]+tam[2]+tam[1]+base26[m];
  // goto deb;
  chr3:
  for l:=1 to 605 do
  begin
    dec(m,27);
    writeln(m);
    inc(i);
    if i=27 then
    begin
      i:=0;
      inc(j);
      dec(m,27);
      tam[2]:=base26[j];
    end
    else tam[1]:=base26[i];
  end;
  kq:=tam[2]+tam[1]+base26[m];
  goto deb;
  chr2:
  while m>26 do
  begin
    inc(i);
    tam[1]:=base26[i];
  end;
  kq:=tam[1]+base26[m];
  goto deb;
  chr1:kq:=base26[m];
  deb:kq:=kq+tam1;
  write(f,kq);
  close(f);
end.