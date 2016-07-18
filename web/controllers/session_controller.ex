defmodule PasswordlessLoginApp.SessionController do
  use PasswordlessLoginApp.Web, :controller
  alias PasswordlessLoginApp.User

  def new(conn, _params) do
    changeset = User.changeset(%User{})
    render conn, "new.html", changeset: changeset
  end
end
