program InsertionSort;

type
  DataItem = char;
  DataArray = array[1..4] of DataItem;
    
procedure Insert(var item: DataArray; count: integer);
var
  i,j: integer;
  x: DataItem;
begin
  for i := 2 to count do
  begin
    x:=item[i];
    j:=i-1;
    while (x<item[j]) and (j>0) do
    begin
      item[j+1]:=item[j]; 
      j:=j-1;
    end;
    item[j+1]:=x;
  end;
end;

var
  arr: DataArray;
  i: integer;
begin
  { d c a b }
  { c d a b }
  { a c d b }
  { a b c d }
  arr[1]:='d'; arr[2]:='c'; arr[3]:='a'; arr[4]:='b';
  Insert(arr, 4);
  for i := 1 to 4 do Write(arr[i]);
end.
