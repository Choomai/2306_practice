var bh,ch,ab,ac:real;
begin
  while bh<=0 do read(bh);
  while ch<=0 do read(ch);
  ab:=sqrt((bh+ch)*bh);
  writeln('AB=',ab:4:2);
  ac:=sqrt((bh+ch)*ch);
  write('S=',ab*ac/2:4:2);
end.
{Cho tam giac ABC(vuong tai A), duong cao AH, nhap BH,CH va tinh AB,S_ABC}