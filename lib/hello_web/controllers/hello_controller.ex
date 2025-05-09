defmodule HelloWeb.HelloController do
  use HelloWeb, :controller
  plug :put_view, html: HelloWeb.HelloHTML, json: HelloWeb.PageJSON
  # plug :put_view, "html: HelloWeb.PageHTML", json: HelloWeb.PageJSON

  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, :show, messenger: messenger)
  end
end
