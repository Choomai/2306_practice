var f:text;
sa,sb:string;
a,b:array[1..10,1..10] of char;
i,j,k,l,m,n,t,dt,ax1,ax2,bx1,bx2,ay1,ay2,by1,by2:byte;
label chk,srch;
begin // Chua hoan thanh
  // assign(f,'109.inp');
  // reset(f);
  // read(f,t);
  // read(f,m,n);
  // m:=4;n:=5;
  // for i:=1 to m do
  //   for j:=1 to n do begin write('a',i,j,':');readln(a[i,j]);end;
  // for i:=1 to m do
  //   for j:=1 to n do begin write('b',i,j,':');readln(b[i,j]);end;
  // close(f);
  // for i:=1 to m do
  //   for j:=1 to n do
  //     for k:=1 to m do
  //       for l:=1 to n do if a[i,j]=b[k,l] then goto srch;
  // srch:
  // ax1:=i;ay1:=j;bx1:=k;by1:=l;
  // for i:=m downto 1 do
  //   for j:=n downto 1 do
  //     for k:=m downto 1 do
  //       for l:=n downto 1 do if a[i,j]=b[k,l] then goto chk;
  // chk:
  // ax2:=i;ay2:=j;bx2:=k;by2:=l;
  // for i:=ax1 to ax2 do
  //   for j:=ay1 to ay2 do sa:=sa+a[i,j];
  // for i:=bx1 to bx2 do
  //   for j:=by1 to by2 do sb:=sb+b[i,j];
  // writeln(ax1,' ',ax2,' ',ay1,' ',ay2,' ',bx1,' ',bx2,' ',by1,' ',by2);
  // writeln(sa);
  // writeln(sb);
  // if sa=sb then dt:=(ax2-ax1+1)*(ay2-ay1+1);
  // assign(f,'109.out');
  // rewrite(f);
  // write(f,dt);
  // close(f);
end.