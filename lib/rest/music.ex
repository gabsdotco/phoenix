defmodule Rest.Music do
  def create("ok") do
    {
      :ok,
      %{
        title: "In The End",
        artist: "Linkin Park",
        album: "Hybrid Theory"
      }
    }
  end

  def create("error") do
    {
      :error,
      "Could not create music"
    }
  end
end
