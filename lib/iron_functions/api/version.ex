defmodule IronFunctions.Api.Version do
  @moduledoc """
  Documentation for IronFunctions.Api.Version.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://127.0.0.1:8080/v1"
  plug Tesla.Middleware.JSON

  @doc """
  Get daemon version.

  
  """
  def version_get() do
    method = [method: :get]
    url = [url: "/version"]
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
