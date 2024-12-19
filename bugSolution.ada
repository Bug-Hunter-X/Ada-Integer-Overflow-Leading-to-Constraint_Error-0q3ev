```ada
function Add(X : Long_Integer; Y : Long_Long_Integer) return Long_Long_Integer is
begin
  return X + Y;
end Add;

procedure Example is
A : Long_Integer := 5;
B : Long_Long_Integer := 10000000000;
Sum : Long_Long_Integer;
begin
  Sum := Add(A, B);  -- Correct usage with Long_Long_Integer
  Put_Line("Sum is: " & Long_Long_Integer'Image(Sum));
end Example;
```