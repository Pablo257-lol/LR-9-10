var
  arr: array[1..6, 1..8] of integer;
  resultArr: array[1..6] of integer;
  i, j: integer;
  found: boolean;

begin
  
  // Создание двумерного массива
  for i := 1 to 6 do
  begin
    for j := 1 to 8 do
    begin
      arr[i, j] := Random(21) - 10;
    end;
  end;
  
  // Вывод исходного двумерного массива
  for i := 1 to 6 do
  begin
    for j := 1 to 8 do
    begin
      Write(arr[i, j]:4);
    end;
    Writeln;
  end;
  writeln();
  
  // Получение одномерного массива
  for i := 1 to 6 do
  begin
    found := False;
    for j := 1 to 8 do
    begin
      if Abs(arr[i, j]) > 4 then
      begin
        resultArr[i] := arr[i, j];
        found := True;
        break;
      end;
    end;
    if not found then
      resultArr[i] := 0;
  end;
  
  // Вывод одномерного массива
  writeln('Одномерный массив:');
  for i := 1 to 6 do
    Write(resultArr[i]:4);
end.