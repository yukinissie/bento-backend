defmodule Myapp.PostsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Myapp.Posts` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        content: "some content",
        user_id: "some user_id"
      })
      |> Myapp.Posts.create_post()

    post
  end
end
