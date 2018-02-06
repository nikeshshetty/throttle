defmodule ThrottleWeb.PageController do
  use ThrottleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
