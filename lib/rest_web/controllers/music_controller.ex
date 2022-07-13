defmodule RestWeb.MusicController do
  use RestWeb, :controller

  alias Rest.Music

  def index(conn, %{"success" => success}) do
    success
    |> Music.create()
    |> handle_response(conn)
  end

  defp handle_response({:ok, music}, conn) do
    IO.inspect(music)
    conn
    |> put_status(:ok)
    |> render("create.json", music: music)
  end

  defp handle_response({:error, message}, conn) do
    conn
    |> put_status(:bad_request)
    |> json(%{message: message})
  end
end
