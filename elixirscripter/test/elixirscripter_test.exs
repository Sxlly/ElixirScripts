defmodule ElixirscripterTest do
  use ExUnit.Case
  doctest Elixirscripter

  test "greets the world" do
    assert Elixirscripter.hello() == :world
  end
end
