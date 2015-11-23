defmodule HelloPhoenixBugCommit.PageController do
  use HelloPhoenixBugCommit.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
