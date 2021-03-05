defmodule ElixirDemoWeb.Router do
  use ElixirDemoWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ElixirDemoWeb do
    pipe_through :api

    get "/", PageController, :index
  end

end
