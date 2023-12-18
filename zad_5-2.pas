var
  arr: array[1..8, 1..8] of integer;
  resultArr: array[1..8] of integer;
  i,j,h,k: integer;
  
  begin
  
  // Создание двумерного массива
  for i := 1 to 8 do
  begin
    for j := 1 to 8 do
    begin
      arr[i, j] := random(1,10);
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
  
  // Нахождение максимального элемента каждой строки
  for i:= 1 to 8 do
    begin
      h:= 0;
      k:= 1;
      for j:= 1 to 8 do
        begin
          if arr[i,j] = h then k:= k + 1;
          if arr[i,j] > h then
            begin 
              h:= arr[i,j];
              k:= 1;
            end;
        end;
      if k = 1 then resultArr[i]:= 1
      else resultArr[i]:= -1;
    end;
    
  // Вывод одномерного массива
  writeln('Одномерный массив:');
  for i:= 1 to 8 do
    write(resultArr[i]:4)
  end.