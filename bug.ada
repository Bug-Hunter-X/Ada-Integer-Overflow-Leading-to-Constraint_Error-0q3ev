```ada
function Add(X : Integer; Y : Integer) return Integer is
begin
  return X + Y;
end Add;

procedure Example is
A : Integer := 5;
B : Integer := 10;
Sum : Integer;
begin
  Sum := Add(A, B); -- Correct usage
  Put_Line("Sum is: " & Integer'Image(Sum));

  -- Incorrect usage of Add function that results in Constraint_Error
  -- This is the bug! 
  Sum := Add(A, 10000000000); -- Integer overflow
  Put_Line("Sum is: " & Integer'Image(Sum));
end Example;
```