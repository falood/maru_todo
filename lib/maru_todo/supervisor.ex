defmodule MaruTodo.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [], name: __MODULE__)
  end

  def init([]) do
    [ worker(MaruTodo.Repo, [])
    ] |> supervise strategy: :one_for_one
  end

end
