defmodule Elixirscripter do

  use Application
  def start(_type, _args) do
    #code begin

    #call main on run time
    Elixirscripter.main()
    Supervisor.start_link([], strategy: :one_for_one) #supervisor watches child processes child processes in "[]"
  end

  #dummy hello world method
  def hello do
    :world
  end

  #main method --> called by start method
  def main do
    x = 5
    x = 10
    IO.puts(x)
  end




end
