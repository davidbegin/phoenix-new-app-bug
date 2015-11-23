defmodule HelloPhoenix_1CommitBefore.PageControllerTest do
  use HelloPhoenix_1CommitBefore.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
