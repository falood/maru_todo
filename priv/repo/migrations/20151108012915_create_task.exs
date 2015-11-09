defmodule MaruTodo.Repo.Migrations.CreateTask do 
	use Ecto.Migration

	def change do
		create table(:tasks) do
			add :title, :string
		end
	end
end