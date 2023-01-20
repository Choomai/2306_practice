var f:text;
a:array[1..100000] of string;
t:longint;
i,j,res:byte;
c:array[1..26] of boolean;
begin
  assign(f,'096.inp');
  reset(f);
  readln(f,t);
  for i:=1 to t do readln(f,a[i]);
  close(f);
  assign(f,'096.out');
  rewrite(f);
  for i:=1 to t do
  begin
    res:=0;
    for j:=1 to 26 do c[j]:=false;
    for j:=1 to length(a[i]) do
      case a[i][j] of
        'A':c[1]:=true;'B':c[2]:=true;'C':c[3]:=true;'D':c[4]:=true;
        'E':c[5]:=true;'F':c[6]:=true;'G':c[7]:=true;'H':c[8]:=true;
        'I':c[9]:=true;'J':c[10]:=true;'K':c[11]:=true;'L':c[12]:=true;
        'M':c[13]:=true;'N':c[14]:=true;'O':c[15]:=true;'P':c[16]:=true;
        'Q':c[17]:=true;'R':c[18]:=true;'S':c[19]:=true;'T':c[20]:=true;
        'U':c[21]:=true;'V':c[22]:=true;'W':c[23]:=true;'X':c[24]:=true;
        'Y':c[25]:=true;'Z':c[26]:=true;
      end;
    for j:=1 to 26 do if c[j]=true then inc(res);
    writeln(f,res);
  end;
  close(f);
end.
{Đếm có bao nhiêu kí tự khác nhau}