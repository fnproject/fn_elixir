defmodule Fn.Api.Call do
  @moduledoc """
  Documentation for Fn.Api.Call.
  """

  use Tesla

  plug Tesla.Middleware.BaseUrl, "https://127.0.0.1:8080/v1"
  plug Tesla.Middleware.JSON

  @doc """
  Get call information

  Get call information
  """
  def apps_app_calls_call_get(app, call) do
    method = [method: :get]
    url = [url: "/apps/{app}/calls/#{call}"]
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
  Delete call log entry

  Delete call log entry
  """
  def apps_app_calls_call_log_delete(call, app) do
    method = [method: :delete]
    url = [url: "/apps/{app}/calls/#{call}/log"]
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
  Get call logs

  Get call logs
  """
  def apps_app_calls_call_log_get(app, call) do
    method = [method: :get]
    url = [url: "/apps/{app}/calls/#{call}/log"]
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
  Get app-bound calls.

  Get app-bound calls can filter to route-bound calls.
  """
  def apps_app_calls_get(app, route) do
    method = [method: :get]
    url = [url: "/apps/#{app}/calls"]
    query_params = [query: [{:"route", route}]]
    header_params = []
    body_params = []
    form_params = []
    params = query_params ++ header_params ++ body_params ++ form_params
    opts = []
    options = method ++ url ++ params ++ opts

    request(options)
  end
end
