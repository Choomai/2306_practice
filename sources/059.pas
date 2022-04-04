var f:text;
h,m,s,adds:byte;
begin
  assign(f,'059.inp');
  reset(f);
  read(f,h,m,s,adds);
  close(f);
  if adds>60-s then
  begin
    s:=adds-(60-s);
    inc(m);
    if m>=60 then inc(h);
  end
  else s:=s+adds;
  assign(f,'059.out');
  rewrite(f);
  write(f,h,' gio ',m,' phut ',s,' giay ');
  close(f);
end.