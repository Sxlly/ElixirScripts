defmodule Elixirscripter do

  def get_latest_reading(list) do
    hd(list)
  end

  def add_reading_slow(list, value) do
    list ++ [value]
  end

  def add_reading_fast(list, value) do
    list_reverse = Enum.reverse(list)
    new_list = [value | list_reverse]
    Enum.reverse(new_list)
  end









end
