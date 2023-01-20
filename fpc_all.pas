var fx86,fx64:text;
i,n,max_digit,length_str_new:longint;
str_new:string;
begin
  write('Nhap so luong file can compile:');read(n);
  str(n,str_new);
  max_digit:=length(str_new);
  assign(fx86,'compileall(i386-win32).cmd');rewrite(fx86);
  assign(fx64,'compileall(x86_64).cmd');rewrite(fx64);
  writeln(fx86,'@echo off');
  writeln(fx86,'cd .\sources\');
  writeln(fx64,'@echo off');
  writeln(fx64,'cd .\sources\');
  for i:=1 to n do
  begin
    str(i,str_new);
    length_str_new:=length(str_new);
    while length_str_new<max_digit do
    begin
      str_new:='0'+str_new;
      inc(length_str_new);
    end;
    writeln(fx86,'fpc ',str_new);
    writeln(fx86,'move /Y ',str_new,'.exe "..\pre-compiled\win32\',str_new,'(win32).exe"');
    writeln(fx64,'fpc -P"x86_64" ',str_new);
    writeln(fx64,'move /Y ',str_new,'.exe "..\pre-compiled\win64\',str_new,'(win64).exe"');
  end;
  writeln(fx86,'cd ..');
  writeln(fx64,'cd ..');
  close(fx86);close(fx64);
end.