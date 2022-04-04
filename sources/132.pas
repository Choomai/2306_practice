const chars=['A'..'Z','a'..'z',#32,#58];
var inp,strd,strm:string;
d,i,j,m,y,lastchar:integer;
onechard,onecharm,y366:boolean;
label final;
begin
  read(inp);
  lastchar:=length(inp);j:=1;
  for i:=1 to lastchar do
    if inp[j] in chars then delete(inp,j,1) else inc(j);
  if inp[2]='-' then onechard:=true;
  if onechard then
  begin
    strd:=copy(inp,1,1);
    val(strd,d);
    delete(inp,1,2);
  end
  else
  begin
    strd:=copy(inp,1,2);
    val(strd,d);
    delete(inp,1,3);
  end;
  if inp[2]='-' then onecharm:=true;
  if onecharm then
  begin
    strm:=copy(inp,1,1);
    val(strm,m);
    delete(inp,1,2);
  end
  else
  begin
    strm:=copy(inp,1,2);
    val(strm,m);
    delete(inp,1,3);
  end;
  val(inp,y);inc(d);
  case m of
    1,3,5,7,8,10,12:if d>31 then
      begin
        d:=1;inc(m);
        if m>12 then
        begin
          inc(y);m:=1;
        end;
        goto final;
      end
      else goto final;
    4,6,9,11:if d>30 then
      begin
        d:=1;inc(m);
        if m>12 then
        begin
          inc(y);m:=1;
        end;
        goto final;
      end
      else goto final;
    2:begin
        if (y mod 4=0) and (y mod 100<>0) then y366:=true;
        if (y366) and (d=30) then
        begin
          d:=1;inc(m);
          if m>12 then
          begin
            inc(y);m:=1;
          end;
          goto final;
        end
        else if (y366=false) and (d=29) then
          begin
            d:=1;inc(m);
            if m>12 then
            begin
              inc(y);m:=1;
            end;
            goto final;
          end
        else goto final;
      end;
  end;
  final:write(d,'/',m,'/',y);
end.
{In ra d/m/y sau khi inc(d,1)}