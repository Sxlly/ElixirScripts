defmodule Elixirscripter do

  use Application
  def start(_type, _args) do
    #code begin

    #call main on run time
    Elixirscripter.main()
    Supervisor.start_link([], strategy: :one_for_one) #supervisor watches child processes child processes in "[]"
  end

  def main do
    name = "Shae" #string
    status = :gold #atom

    if status === :gold do
      IO.puts("welcome to the fancy lounge, #{name}")
    else
      IO.puts("Bye")
    end

  end




end
