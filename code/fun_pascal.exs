defmodule FunPascal do

  def fac(0), do: 0
  def fac(1), do: 1
  def fac(n), do: n * fac(n-1)


  def triangle(-1), do: { :ok, :complete }
  def triangle(height) do
    IO.inspect build_row(height, 0, [])
    triangle(height-1)
  end

  defp build_row(width, column, accum) when width < column, do: accum
  defp build_row(width, column, accum) do
    build_row(width, column+1, List.insert_at(accum, width, cell_value(width, column)))
  end

  def cell_value(_,0), do: 1
  def cell_value(r,c) when r == c, do: 1
  def cell_value(r,c) do
    cell_value(r-1, c-1) + cell_value(r-1, c)
  end

end


