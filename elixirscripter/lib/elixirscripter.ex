defmodule Elixirscripter do

  use Application
  def start(_type, _args) do
    #code begin
    IO.puts(Elixirscripter.hello())
    Supervisor.start_link([], strategy: :one_for_one) #supervisor watches child processes child processes in "[]"
  end

  def hello do
    :world
  end

end
