defmodule HelloPhoenixMaster.PageController do
  use HelloPhoenixMaster.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
