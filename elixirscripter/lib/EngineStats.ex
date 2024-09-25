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

  #if list has one item then item -> max value
  def max_reading([a]) do
    a
  end

  #if list has > 1 item do following function
  def max_reading([h | t]) do
    [x | y] = t #split the tail list [n1,n2,n3] -> n1 becomes x -> [n2,n3] becomes y remainder list

    if h > x do #if original head value greater than x value do max reading (head | y list)
      max_reading([h | y])
    else
      max_reading(t) # if the current head value is not greater than x value then run max_Reading function with current tail list
    end
  end

  #if list has one value left then throw risen_count value to iex shell
  def times_risen([a], risen_count) do
    risen_count
  end

  #if list has > 1 itemd o the following
  def times_risen([h | t], risen_count) do
    [x | y] = t #split the tail list [n1,n2,n3] -> n1 becomes x -> [n2,n3] becomes y remainder list

    if h > x do #if original head value greater than x value do max reading (head | y list)
      risen_count = risen_count + 1 #if current head is bigger then number to its right then add 1 count to rise_count variable
      times_risen([x | y], risen_count) #call itself again {recursion} pass [current x | y list], risen_count variable
    else
      times_risen(t, risen_count) #pass tail list into itself function along with risen_count variable

    end
  end

  #if list has one item left it means no items pre this item were larger than it than 50 or greater therefore danger is false
  def danger_detect([a]) do
    false #-> boolean to iex shell
  end

  #if list length > 1 do the following function
  def danger_detect([h | t]) do

    [x | y] = t #split the tail list [n1,n2,n3] -> n1 becomes x -> [n2,n3] becomes y remainder list

    if h - x >= 50 do # if current head value minus current x value leave remainder of 50 or greater do the following
      true #if condition above was satisfied -> rise of 50 or greater has occured in readings -> danger -> boolean -> true
    else
      danger_detect(t) # run itself {recursion} with current tail list
    end
  end

  #function to detect if string variable contains the word FIRE in any format
  def detect_fire(text) do
    String.trim(text) #removes whitespaces from string " " eg
    |> String.contains?(["FIRE", "fire", "Fire", "fIRE"]) # pipe trimmed string into function contains -> if string contains the word fire in appearance of the 4 pre defined structures -> boolean -> true
  end






end
