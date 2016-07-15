defmodule PasswordlessLoginApp.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :access_token, :string

      timestamps()
    end

    create unique_index(:users, [:access_token])
    create unique_index(:users, [:email])
  end
end
