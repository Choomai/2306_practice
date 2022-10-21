var bh,ch,ab,ac:real;
begin
  while bh<=0 do read(bh);
  while ch<=0 do read(ch);
  ab:=sqrt((bh+ch)*bh);
  writeln('AB=',ab:4:2);
  ac:=sqrt((bh+ch)*ch);
  write('S=',ab*ac/2:4:2);
end.
{Cho tam giác ABC(vuông tại A), đường cao AH, nhập BH,CH va tính AB,S_ABC}