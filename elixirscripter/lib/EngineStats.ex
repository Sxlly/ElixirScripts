defmodule Elixirscripter do

  use Application
  def start(_type, _args) do
    #code begin

    #call main on run time
    Elixirscripter.main()
    Supervisor.start_link([], strategy: :one_for_one) #supervisor watches child processes child processes in "[]"
  end

  def main do
    time = DateTime.new!(Date.new!(2024, 1, 1), Time.new!(0,0,0,0), "Etc/UTC")

  end




end
