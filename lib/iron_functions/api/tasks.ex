defmodule IronFunctions.Api.Tasks do
  @moduledoc """
  Documentation for IronFunctions.Api.Tasks.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://127.0.0.1:8080/v1"
  plug Tesla.Middleware.JSON

  @doc """
  Get next task.

  Gets the next task in the queue, ready for processing. Consumers should start processing tasks in order. No other consumer can retrieve this task.
  """
  def tasks_get() do
    method = [method: :get]
    url = [url: "/tasks"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
