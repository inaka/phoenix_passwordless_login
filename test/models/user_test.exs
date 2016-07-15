defmodule PasswordlessLoginApp.UserTest do
  use PasswordlessLoginApp.ModelCase

  alias PasswordlessLoginApp.User

  @valid_attrs %{access_token: "some content", email: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
