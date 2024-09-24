defmodule Elixirscripter do

  use Application
  def start(_type, _args) do
    #code begin

    #call main on run time
    Elixirscripter.main()
    Supervisor.start_link([], strategy: :one_for_one) #supervisor watches child processes child processes in "[]"
  end

  def main do

    IO.puts("EngineMonitor Active")

  end



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
