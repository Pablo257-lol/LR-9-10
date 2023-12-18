program FindMinMax;

const
  N = 10; // Размер массива
var
  arr: array[1..N] of integer; // Объявление массива целых чисел
  i, j, minAbs, maxNeg, maxNegIndex: integer; // Переменные для индексов и значений

procedure FindMinMaxValues;
begin
  minAbs := arr[1]; // Инициализация минимального по модулю значения первым элементом массива
  maxNeg := 0; // Используем 0 как начальное значение для поиска максимального отрицательного элемента
  maxNegIndex := 0; // Инициализация индекса максимального отрицательного элемента

  for var i := 2 to N do
  begin
    // Находим минимальный по модулю элемент
    if abs(arr[i]) < abs(minAbs) then
      minAbs := arr[i];

    // Находим максимальный отрицательный элемент и его индекс
    if (arr[i] < 0) and (arr[i] < maxNeg) then
    begin
      maxNeg := arr[i];
      maxNegIndex := i;
    end;
  end;
end;

begin
  // Заполняем массив случайными значениями для примера
  for j := 1 to N do
    arr[j] := Random(21) - 10; // Случайные числа от -10 до 10

  // Выводим массив
  WriteLn('Массив: ', arr);

  // Вызываем процедуру поиска минимального по модулю и максимального отрицательного элемента
  FindMinMaxValues;

  // Выводим результаты
  WriteLn('Минимальный по модулю элемент: ', minAbs);
  WriteLn('Максимальный отрицательный элемент: ', maxNeg, ' (Индекс: ', maxNegIndex, ')');
end.
