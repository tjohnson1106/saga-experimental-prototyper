defmodule SagaWeb.Router do
  use SagaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SagaWeb do
    pipe_through :api
  end
end
