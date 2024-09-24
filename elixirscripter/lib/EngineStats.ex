defmodule Elixirscripter do


  def get_readings() do
    Enum.map([0,0,0,0,0], fn item -> item = :rand.uniform(100) end)
  end

  def get_latest_reading(list) do
    hd(list)
  end

  def add_reading_head(list, value) do
    list ++ [value]
  end

  def add_reading_tail(list, value) do
    list_reverse = Enum.reverse(list)
    new_list = [value | list_reverse]
    Enum.reverse(new_list)
  end









end
