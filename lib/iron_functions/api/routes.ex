defmodule IronFunctions.Api.Routes do
  @moduledoc """
  Documentation for IronFunctions.Api.Routes.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://127.0.0.1:8080/v1"
  plug Tesla.Middleware.JSON

  @doc """
  Get route list by app name.

  This will list routes for a particular app.
  """
  def apps_app_routes_get(app) do
    method = [method: :get]
    url = [url: "/apps/#{app}/routes"]
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
  Create new Route

  Create a new route in an app, if app doesn&#39;t exists, it creates the app
  """
  def apps_app_routes_post(app, body) do
    method = [method: :post]
    url = [url: "/apps/#{app}/routes"]
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
  Deletes the route

  Deletes the route.
  """
  def apps_app_routes_route_delete(app, route) do
    method = [method: :delete]
    url = [url: "/apps/{app}/routes/#{route}"]
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
  Gets route by name

  Gets a route by name.
  """
  def apps_app_routes_route_get(app, route) do
    method = [method: :get]
    url = [url: "/apps/{app}/routes/#{route}"]
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
  Update a Route

  Update a route
  """
  def apps_app_routes_route_patch(app, route, body) do
    method = [method: :patch]
    url = [url: "/apps/{app}/routes/#{route}"]
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
