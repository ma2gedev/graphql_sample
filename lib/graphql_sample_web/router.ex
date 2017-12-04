defmodule GraphqlSampleWeb.Router do
  use GraphqlSampleWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GraphqlSampleWeb do
    pipe_through :api
  end
end
