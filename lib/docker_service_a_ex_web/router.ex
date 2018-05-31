defmodule DockerServiceAExWeb.Router do
  use DockerServiceAExWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DockerServiceAExWeb do
    pipe_through :api
  end
end
