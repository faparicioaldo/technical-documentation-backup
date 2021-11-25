defmodule Custom do
  def frequencies(phrase) do
    phrase
    |> String.split()
    #|> Enum.reduce(%{}, fn word, acc_map -> Map.update(acc_map, word, 1, fn occurrences -> occurrences + 1 end) end)
    |> Enum.reduce(%{}, fn word, acc_map -> Map.update(acc_map, word, 1, &(&1 + 1)) end)
  end
end

"""
In this case we use next:
  1. capture operator used to 
      * convert function to anonimous function
      * create short anonimous function &(&1 + 1)
      * it need at least one parameter
      * &1 is called value plcaeholder (marcador de posicion) and identifies the first argument
      * &[&1, &2] -> return list 
      * &{&1, &2} -> return tuple 
    2. Map.update/4: 
    3. Enum.reduce/2: reduce a list of arguments to just one applying an function
    4. |> pipeline operator, previous expression indicates first parameter of the following expression, it only remains to indicate the rest of the parameters

    Enum.map(["juan","pedron","mar"], &String.length/1)
    Map.new([{:a, 1},{:b, 2}])
    Enum.reduce(["ali","juan","gguillermina"], %{}, fn name, mapa -> Map.put(mapa, name, String.length(name))  end)

References
    > https://dockyard.com/blog/2016/08/05/understand-capture-operator-in-elixir

"""
