## Investigar como funciona el tail call optimization
defmodule LinesCounter do
  def count(path) do
    File.read(path)
    |> lines_num
  end

  defp lines_num({:ok, contents}) do
    contents
    |> String.split("\n")
    |> length 
  end

  defp lines_num({:error, reason}) do
    IO.puts("Ocurrio un problema al leer el archivo: #{reason}")
  end
end










 defmodule ListHelper do
    def sum([]), do: 0
    def sum([head | tail]), do: head + sum(tail)
 end

 defmodule ListHelper do
   def sum([head | tail]) do
     suu = &(if &1 == [], do: 0)
     head + suu.(tail)
   end
 end






 if 5< 5 , do: some, else: another

 defmodule Custom do
   def max(a, b) do
     if a >= b do
       a
     else
       b
     end
   end
 end


 
def max(a, b) do
  cond do
    a >= b -> a
    true -> b
  end
end


Usando case 
expr = {:ok, "Hello World"} 

case expr do
  {:ok, result} -> result
  {:error} -> "Uh oh!"
  _ -> "Catch all"
end




