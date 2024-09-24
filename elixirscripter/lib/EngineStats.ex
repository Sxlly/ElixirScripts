defmodule Elixirscripter do

  use Application
  def start(_type, _args) do
    #code begin

    #call main on run time
    Elixirscripter.main()
    Supervisor.start_link([], strategy: :one_for_one) #supervisor watches child processes child processes in "[]"
  end

  def main do

    turbine_inlet_temp = [192,43,32,312,984]
    oil_temp = [232,434,124,545,343]
    oil_pressure = [234,121,434,646,343]

    IO.puts("The latest oil temp: #{get_latest(oil_temp)}")


  end

  def get_latest(list) do
    hd(list)
  end







end
