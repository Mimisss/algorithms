program SelectionSort;

type
  DataItem = char;
  DataArray = array[1..4] of DataItem;
  
procedure Selection(var item: DataArray; count: integer);
var
  x: DataItem;
  i,j,k: integer;
begin
  for i:= 1 to count-1 do
  begin
    k:=i;
    x:=item[i];
    for j:= i+1 to count do
      if item[j]<x then
      begin
        k:=j;
        x:=item[j];
      end;
    item[k]:=item[i];
    item[i]:=x;
  end;
end;

var
  arr: DataArray;
  i: integer;
begin
  arr[1]:='d'; arr[2]:='c'; arr[3]:='a'; arr[4]:='b';
  Selection(arr, 4);
  for i := 1 to 4 do Write(arr[i]);
end.
