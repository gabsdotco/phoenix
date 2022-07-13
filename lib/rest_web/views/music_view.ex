defmodule RestWeb.MusicView do
  use RestWeb, :view

  def render("create.json", %{music: music}) do
    %{
      message: "Music created",
      music: music
    }
  end
end
