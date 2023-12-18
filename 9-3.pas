program FindElements;

const
  N = 10; // Размер массива

var
  arr: array[1..N] of integer;
  i, firstPositiveIndex, lastNegativeIndex: integer;

// Функция для поиска номера первого положительного элемента
function FindFirstPositiveIndex: integer;
begin
  for i := 1 to N do
  begin
    if arr[i] > 0 then
    begin
      Result := i;
      Exit;
    end;
  end;
  Result := 0; // Если положительных элементов нет
end;

// Функция для поиска номера последнего отрицательного элемента
function FindLastNegativeIndex: integer;
begin
  for i := N downto 1 do
  begin
    if arr[i] < 0 then
    begin
      Result := i;
      Exit;
    end;
  end;
  Result := 0; // Если отрицательных элементов нет
end;

begin
  // Инициализация массива (пример)
  for i := 1 to N do
    arr[i] := random(20) - 10;

  // Поиск номера первого положительного элемента
  firstPositiveIndex := FindFirstPositiveIndex;

  // Поиск номера последнего отрицательного элемента
  lastNegativeIndex := FindLastNegativeIndex;

  // Вывод результатов
  writeln('Массив:');
  for i := 1 to N do
    write(arr[i], ' ');

  writeln;
  writeln('Номер первого положительного элемента: ', firstPositiveIndex);
  writeln('Номер последнего отрицательного элемента: ', lastNegativeIndex);
end.
