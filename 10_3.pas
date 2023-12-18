program TwoDimArray;

const
  N = 8; // Размер массива

var
  arr: array[1..N, 1..N] of Integer; // Двумерный массив
  resultArray: array[1..N] of Integer; // Одномерный массив

procedure FillArray;
var
  i, j: Integer;
begin
  // Заполнение двумерного массива случайными значениями
  for i := 1 to N do
    for j := 1 to N do
      arr[i, j] := Random(10); // Здесь вы можете использовать свою логику заполнения массива
end;

procedure ProcessArray;
var
  i, j: Integer;
begin
  // Обработка массива для формирования одномерного массива
  for i := 1 to N do
  begin
    resultArray[i] := -1; // Инициализация значением -1 по умолчанию

    // Проверка каждой пары соседних элементов в текущей строке
    for j := 1 to N - 1 do
    begin
      if (arr[i, j] + arr[i, j + 1] = 7) then
      begin
        resultArray[i] := 1; // Если найдена пара соседних элементов с суммой 7, устанавливаем значение 1
        Break; // Прерываем цикл, так как условие уже выполнено
      end;
    end;
  end;
end;

procedure PrintArrays;
var
  i: Integer;
begin
  // Вывод исходного двумерного массива
  writeln('Исходный массив:');
  for i := 1 to N do
    writeln(arr[i]);

  // Вывод результирующего одномерного массива
  writeln('Результирующий массив:');
  writeln(resultArray);
end;

begin
  Randomize; // Инициализация генератора случайных чисел

  FillArray; // Заполнение двумерного массива
  ProcessArray; // Обработка массива
  PrintArrays; // Вывод массивов
end.
