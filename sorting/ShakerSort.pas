program ShakerSort;

type
  DataItem = char;
  DataArray = array[1..4] of DataItem;
  
procedure Shaker(var item: DataArray; count: integer);
var
  l, r, i, k: integer;
  temp: DataItem;
begin
  l:=2; r:=count; k:=count;
  repeat
    for i := r downto l do
    begin
      if item[i-1]>item[i] then
      begin
        temp:=item[i-1];
        item[i-1]:=item[i];
        item[i]:=temp;
        k:=i;
      end;
    end;
    l:=k+1;
    
    for i := l to r do
    begin
      if item[i-1]>item[i] then
      begin
        temp:=item[i-1];
        item[i-1]:=item[i];
        item[i]:=temp;
        k:=i;
      end;    
    end;
    
    r:=k-1;
  until l>r;
end;

var
  arr: DataArray;
  i: integer;
begin
  arr[1]:='d'; arr[2]:='b'; arr[3]:='a'; arr[4]:='c';
  Shaker(arr, 4);
  for i := 1 to 4 do Write(arr[i]);
end.
