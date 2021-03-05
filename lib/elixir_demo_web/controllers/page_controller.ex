defmodule ElixirDemoWeb.PageController do
  use ElixirDemoWeb, :controller

  def index(conn, _params) do
    render conn, "index.json"
  end
end
