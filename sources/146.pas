var s,subs,schk1,schk2:string;
tmp:char;
i,j,k,l,n,cnt,lct1,lct2,stop,tmpnum:byte;
tmpchk:boolean;
const bcchars:array[0..1] of string[2]=('BC','CB');
abcchars:array[0..3] of string[2]=('AB','AC','BA','CA');
chars:array[0..5] of string[2]=('AB','AC','BA','CA','BC','CB');
onechar:array[0..1] of char=('B','C');
label res;
procedure shuffle(var str:string);
begin
  for j:=1 to length(str) do
  begin
    lct1:=random(length(str))+1;lct2:=random(length(str))+1;
    tmp:=str[lct1];
    str[lct1]:=str[lct2];
    str[lct2]:=tmp;
  end;
end;
// function shuffle(str:string):string;
// begin
//   for j:=1 to length(str) do
//   begin
//     lct1:=random(length(str))+1;lct2:=random(length(str))+1;
//     tmp:=str[lct1];
//     str[lct1]:=str[lct2];
//     str[lct2]:=tmp;
//   end;
// end;
function checkstr(str:string):boolean;
begin
  tmpchk:=true;
  schk1:='';schk2:='';
  if odd(length(str)) then
  begin
    stop:=(length(str) div 2)+1;
    for j:=1 to stop-1 do schk1:=schk1+str[j];
    for j:=stop+1 to length(str) do schk2:=schk2+str[j];
  end
  else
  begin
    stop:=length(str) div 2;
    for j:=2 to stop do
    begin
      for k:=1 to length(str)-j do
      begin
        schk1:=copy(str,k,j);
        for l:=k+j to length(str)-j+1 do schk2:=copy(str,l,j);
        if schk1=schk2 then tmpchk:=false;
      end;
    end;
  end;
  if tmpchk then checkstr:=true else checkstr:=false;
end;
begin
  randomize;
  read(n);
  // for i:=1 to 64 do s:=s+bcchars[random(2)]+abcchars[random(4)];
  // for i:=1 to 128 do s:=s+chars[random(6)];
  // for i:=1 to 255 do
  // begin
  //   tmpnum:=random(2);
  //   if tmpnum=0 then s:=s+'A' else s:=s+onechar[random(2)]
  // end;
  // subs:=copy(s,1,n);
  if checkstr(subs) then goto res;
  repeat shuffle(subs) until checkstr(subs);
  res:writeln(subs);
  for i:=1 to n do if subs[i]='A' then inc(cnt);
  write('So luong ki tu A: ',cnt);
end. // Chưa hoàn thành
{Bài 3, Đề thi cấp tỉnh Thừa Thiên Huế 21-22}