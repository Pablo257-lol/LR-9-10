program MultiplyArrayElements;

const
  N = 5; // Размер массива

var
  array1, array2: array[1..N] of Integer;
  sum1, sum2: Integer;
  i: Integer;

begin
  // Инициализация массивов
  for i := 1 to N do
  begin
    array1[i] := Random(21) - 10; // Заполняем случайными числами от -10 до 10
    array2[i] := Random(21) - 10;
  end;

  // Вывод исходных массивов
  WriteLn('Исходный массив 1: ', array1);
  WriteLn('Исходный массив 2: ', array2);

  // Вычисление сумм положительных элементов
  sum1 := 0;
  sum2 := 0;
  for i := 1 to N do
  begin
    if array1[i] > 0 then
      sum1 := sum1 + array1[i];
    if array2[i] > 0 then
      sum2 := sum2 + array2[i];
  end;

  // Умножение элементов массива с меньшей суммой положительных на 10
  if sum1 < sum2 then
    for i := 1 to N do
      array1[i] := array1[i] * 10
  else
    for i := 1 to N do
      array2[i] := array2[i] * 10;

  // Вывод результирующих массивов
  WriteLn('Результирующий массив 1: ', array1);
  WriteLn('Результирующий массив 2: ', array2);

end.
