defmodule Elixirscripter do

  use Application
  def start(_type, _args) do
    #code begin

    #call main on run time
    Elixirscripter.main()
    Supervisor.start_link([], strategy: :one_for_one) #supervisor watches child processes child processes in "[]"
  end

  def main do
    IO.puts("hello world")

    turbine_inlet_temp = [192,43,32,312,984]

    latest(turbine_inlet_temp)


  end

  def latest([h | t]) do
    IO.puts(h)

  end




end
