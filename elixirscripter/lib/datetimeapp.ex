defmodule DateTimeApp do
  alias ElixirLS.LanguageServer.Dialyzer.Supervisor
  use Application

  def start(_type,_args) do
    DateTimeApp.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end



  def main do
    time = Time.new(16, 30, 0, 0)

  end
end
