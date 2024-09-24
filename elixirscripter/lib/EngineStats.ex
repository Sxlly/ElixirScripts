defmodule Elixirscripter do

  #generate random number between 0-100 for each item in 0-4 list
  def get_readings() do
    Enum.map([0,0,0,0,0], fn item -> item = :rand.uniform(100) end)
  end

  #get latest item {head of list} from list
  def get_latest_reading(list) do
    hd(list)
  end

  #add item to head of the list
  def add_reading_head(list, value) do
    list ++ [value]
  end

  #add item to tail of list
  def add_reading_tail(list, value) do
    list_reverse = Enum.reverse(list)
    new_list = [value | list_reverse]
    Enum.reverse(new_list)
  end

  #if list is empty then sum is -> 0
  def sum_of_readings_simple([]) do
    0
  end


  #sum of list where head becomes first item and tail becomes rest of list -> h : n -> tail -> [n,n,n]
  def sum_of_readings_simple([h | t]) do
    h + sum_of_readings_simple(t)

  end

end
