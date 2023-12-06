
program BubbleSort;

type
  DataItem = char;
  DataArray = array[1..4] of DataItem;
    
procedure Bubble(var item: DataArray; count: integer);
var
  i,j: integer;
  temp: DataItem;
begin
  for i := 2 to count do
  begin
    for j := count downto i do
      if item[j]<item[j-1] then
      begin
        temp:=item[j-1];
        item[j-1]:=item[j];
        item[j]:=temp;
      end;
  end;
end;

var
  arr: DataArray;
  i: integer;
begin
  arr[1]:='d'; arr[2]:='c'; arr[3]:='a'; arr[4]:='b';
  Bubble(arr, 4);
  for i := 1 to 4 do Write(arr[i]);
end.
