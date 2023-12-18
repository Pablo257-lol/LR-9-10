program zad1;
var b,i,v,c:int64;
A:array[1..20] of int64;
function pro(x:int64):int64;
  begin
    if x mod 2 = 0 then
      pro:=x
    else pro:=1;
  end;

begin
  for i:= 1 to 20 do  //Создание массива из 20 рандомных чисел
    begin
    A[i]:=random(1,10);
    if i mod 10 = 0 then
      writeln(A[i]:3)
    else write(A[i]:3);
  end;
  
begin
  c:=1;
  for i:=1 to 20 do
    c:=c*pro(A[i]);
   writeln('Произведение четных чисел массива = ',c:3);
  end;
end.