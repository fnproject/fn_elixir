defmodule IronFunctions.Api.Apps do
  @moduledoc """
  Documentation for IronFunctions.Api.Apps.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://127.0.0.1:8080/v1"
  plug Tesla.Middleware.JSON

  @doc """
  Delete an app.

  Delete an app.
  """
  def apps_app_delete(app) do
    method = [method: :delete]
    url = [url: "/apps/#{app}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get information for a app.

  This gives more details about a app, such as statistics.
  """
  def apps_app_get(app) do
    method = [method: :get]
    url = [url: "/apps/#{app}"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Updates an app.

  You can set app level settings here. 
  """
  def apps_app_patch(app, body) do
    method = [method: :patch]
    url = [url: "/apps/#{app}"]
    query_params = []
    header_params = []
    body_params = [body: body]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Get all app names.

  Get a list of all the apps in the system.
  """
  def apps_get() do
    method = [method: :get]
    url = [url: "/apps"]
    query_params = []
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end

  @doc """
  Post new app

  Insert a new app
  """
  def apps_post(body) do
    method = [method: :post]
    url = [url: "/apps"]
    query_params = []
    header_params = []
    body_params = [body: body]
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
