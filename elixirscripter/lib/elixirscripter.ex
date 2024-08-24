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
    name = "Shae";
    status = :gold

    if status === :gold do
      IO.puts("Welcome to the fancy lounge, #{name}")
    else
      IO.puts("Goodbye no entry!")
    end
  end


  #linked list
  def get_aircraft_turbine_temp() do
    [247,145,256]
  end


  end






end
