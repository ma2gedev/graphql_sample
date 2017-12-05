defmodule GraphqlSampleWeb.Router do
  use GraphqlSampleWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: GraphqlSampleWeb.Schema,
      interface: :simple,
      context: %{pubsub: GraphqlSampleWeb.Endpoint}
  end

end
