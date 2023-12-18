var
  arr: array[1..8, 1..8] of integer;
  resultArr: array[1..8] of integer;
  i,j,h,s,k: integer;
  a: real;
  
  begin
  
  // Создание двумерного массива
  for i := 1 to 8 do
  begin
    for j := 1 to 8 do
    begin
      arr[i, j] := random(-10,10);
    end;
  end;
  
  // Выход исходного двумерного массива
  for i:=1 to 8 do
  begin
    for j:=1 to 8 do
      write(arr[i,j]:4);
    writeln();
  end;
  writeln();
  
  // Определение минимального элемента каждого массива и 
  // вывод этих элементов в одномерном массиве
  for i:= 1 to 8 do
    begin
      h:= 11;
      for j:= 1 to 8 do
        if arr[i,j] < h then h:= arr[i,j];
      resultArr[i]:= h;
      write(resultArr[i]:4)
    end;
  writeln();
  
  // Нахождение среднего арифметического одномерного массива
  s:= 0;
  k:= 8;
  for i:= 1 to 8 do
    begin
      s:= s + resultArr[i];
    end;
  a:= s/k;
  write('Среднее арифметическое одномерного массива = ',a);
  end.