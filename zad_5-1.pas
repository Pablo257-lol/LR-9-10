var c,h,i,r,d,five1,five2:int64;
g:real;
A,B:array[1..1000] of int64;
function one(x,y:integer):real; //Нахождение массива у которого первее элемент кратный пяти
begin
  begin
  if x mod 5 = 0 then
    begin
      h:=i;
      if i<five1 then
        five1:=h
    end;
  end;
  begin
  if y mod 5 = 0 then
  begin
    h:=i;
    if i<five2 then
      five2:=h
  end;
  end;
  if five1<five2 then one:=1
  else one:=2
end;

function mac(x:integer):integer; //Нахождение максимального элемнта в массиве
begin
  if x>h then h:=x;
    mac:=h
end;

function mir(x:integer):integer; //Нахождение индекса минимального элемента в массиве
begin
  if x<h then
    begin
    h:=x;
    d:=i;
    end;
    mir:=d
end;

begin
  for i:= 1 to 20 do //Создаем первый массив
    begin
    A[i]:=random(1,100);
    if i mod 10 = 0 then
      writeln(A[i]:3)
    else write(A[i]:3);
  end;
  
  writeln();
  for i:= 1 to 20 do //Создаем второй массив
    begin
    B[i]:=random(1,100);
    if i mod 10 = 0 then
      writeln(B[i]:3)
    else write(B[i]:3);
  end;
  writeln();
  
  five1:=20;  //Нахождение массива у которого первее элемент кратный пяти (связанна с функцией)
  five2:=20;
  for i:=1 to 20 do
    g:=one(A[i],B[i]);
  
  h:=0;  //Нахождение максимального элемнта в массиве (связан с функцией)
  for i:=1 to 20 do
  if g = 1 then c:=mac(A[i])
  else c:=mac(B[i]);
  
  writeln('Переделанные массивы:');
  for i:=1 to 20 do //Выводит массив, только мак. элементы заменяем на ноль
    if g = 1 then
    begin
      if A[i] = c then A[i]:=0;
      if i mod 10 = 0 then writeln(A[i]:3)
      else write(A[i]:3);
    end
    else begin
      if B[i] = c then B[i]:=0;
      if i mod 10 = 0 then writeln(B[i]:3)
      else write(B[i]:3);
    end;
  writeln();
    
    h:=100;
    d:=20;
  for i:=1 to 20 do //Находит индекс минимального элемента во втором массиве
    if g = 1 then r:=mir(B[i])
    else r:=mir(A[i]);
  
  for i:=1 to 20 do //Выводит второй массив, только все числа после минимального элемента умножены на 2
    if g = 1 then
      if i <= r then
         if i mod 10 = 0 then 
          writeln(b[i]:4)
         else write(b[i]:4)
      else
        if i mod 10 = 0 then 
          writeln((b[i]*2):4)
        else write((b[i]*2):4)
    else
      if i <= r then
         if i mod 10 = 0 then 
          writeln(a[i]:4)
         else write(a[i]:4)
      else
        if i mod 10 = 0 then 
          writeln((a[i]*2):4)
        else write((a[i]*2):4)
  end.