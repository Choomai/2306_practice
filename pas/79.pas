const s0='### #.# #.# #.# ### ';
s1='..# ..# ..# ..# ..# ';
s2='### ..# ### ##. ### ';
s3='### ..# ### ..# ### ';
s4='#.# #.# ### ..# ..# ';
s5='### #.. ### ..# ### ';
s6='### #.. ### #.# ### ';
s7='### ..# ..# ..# ..# ';
s8='### #.# ### #.# ### ';
s9='### #.# ### ..# ### ';
var f:text;
ss0,ss1,ss2,ss3,ss4,ss5,ss6,ss7,ss8,ss9:array[1..5] of string[3];
tam:array[1..5] of string;
h1,h2,m1,m2:string;
i,hh1,hh2,mm1,mm2:byte;
label hour2,min1,min2,en;
begin // Chua hoan thanh
  assign(f,'79.inp');
  reset(f);
  for i:=1 to 5 do readln(f,tam[i]);
  close(f);
  ss0[1]:=s0[1]+s0[2]+s0[3];
  for i:=1 to 5 do
  begin
    h1:=h1+tam[i][1]+tam[i][2]+tam[i][3]+' ';
    h2:=h2+tam[i][5]+tam[i][6]+tam[i][7]+' ';
    m1:=m1+tam[i][9]+tam[i][10]+tam[i][11]+' ';
    m2:=m2+tam[i][13]+tam[i][14]+tam[i][15]+' ';
  end;
  i:=0;
  if h1=s0 then goto hour2 else inc(i);
  if h1=s1 then goto hour2 else inc(i);
  if h1=s2 then goto hour2 else inc(i);
  if h1=s3 then goto hour2 else inc(i);
  if h1=s4 then goto hour2 else inc(i);
  if h1=s5 then goto hour2 else inc(i);
  if h1=s6 then goto hour2 else inc(i);
  if h1=s7 then goto hour2 else inc(i);
  if h1=s8 then goto hour2 else inc(i);
  if h1=s9 then goto hour2 else inc(i);
  hour2:
  hh1:=i;
  i:=0;
  if h2=s0 then goto min1 else inc(i);
  if h2=s1 then goto min1 else inc(i);
  if h2=s2 then goto min1 else inc(i);
  if h2=s3 then goto min1 else inc(i);
  if h2=s4 then goto min1 else inc(i);
  if h2=s5 then goto min1 else inc(i);
  if h2=s6 then goto min1 else inc(i);
  if h2=s7 then goto min1 else inc(i);
  if h2=s8 then goto min1 else inc(i);
  if h2=s9 then goto min1 else inc(i);
  min1:
  hh2:=i;
  i:=0;
  if m1=s0 then goto min2 else inc(i);
  if m1=s1 then goto min2 else inc(i);
  if m1=s2 then goto min2 else inc(i);
  if m1=s3 then goto min2 else inc(i);
  if m1=s4 then goto min2 else inc(i);
  if m1=s5 then goto min2 else inc(i);
  if m1=s6 then goto min2 else inc(i);
  if m1=s7 then goto min2 else inc(i);
  if m1=s8 then goto min2 else inc(i);
  if m1=s9 then goto min2 else inc(i);
  min2:
  mm1:=i;
  i:=0;
  if m2=s0 then goto en else inc(i);
  if m2=s1 then goto en else inc(i);
  if m2=s2 then goto en else inc(i);
  if m2=s3 then goto en else inc(i);
  if m2=s4 then goto en else inc(i);
  if m2=s5 then goto en else inc(i);
  if m2=s6 then goto en else inc(i);
  if m2=s7 then goto en else inc(i);
  if m2=s8 then goto en else inc(i);
  if m2=s9 then goto en else inc(i);
  en:
  mm2:=i;
  assign(f,'79.out');
  rewrite(f);
  write(f,hh1,hh2,':',mm1,mm2);
  close(f);
end.