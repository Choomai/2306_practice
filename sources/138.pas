var f:text;
v,b,d:string;
tmp:char;
begin
  assign(f,'138.inp');reset(f);
  repeat
  begin
    read(f,tmp);
    case tmp of
      'V':v:=v+'V ';
      'B':b:=b+'B ';
      'D':d:=d+'D ';
    end;
  end;
  until eof(f);
  close(f);
  write(v,b,d);
end.
{Sap xep v,b,d}