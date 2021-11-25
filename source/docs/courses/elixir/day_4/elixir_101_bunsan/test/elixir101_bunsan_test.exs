defmodule Elixir101BunsanTest do
  use ExUnit.Case
  doctest Elixir101Bunsan

  test "greets the world" do
    im = "Aldo"
    assert Elixir101Bunsan.hello(im) == "Hello " <> im
  end
end
