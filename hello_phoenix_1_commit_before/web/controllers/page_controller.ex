defmodule HelloPhoenix_1CommitBefore.PageController do
  use HelloPhoenix_1CommitBefore.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
