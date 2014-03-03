
defmodule Pascal do

  def fib(0), do: 0
  def fib(1), do: 1
  def fib(n), do: fib(n-1) + fib(n-1)
    

  def fac(0), do: 0
  def fac(1), do: 1
  def fac(n), do: n * fac(n-1)


  def triangle(0), do: { :ok, :complete }
  def triangle(height) do
    x = lc column inlist Enum.to_list(0..height-1), do: triangle_value(height-1, column) 
    IO.inspect x
    triangle(height-1)
  end

  def triangle_value(_,0), do: 1
  def triangle_value(r,1), do: r
  def triangle_value(r,c) when r == c, do: 1
  def triangle_value(r,c) when r > c do
    div( fac(r), (fac(c) * fac(r-c)) )
  end

end


