defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  plug HelloWeb.Plugs.Locale, "en" when action in [:index]

  @spec home(Plug.Conn.t(), any()) :: Plug.Conn.t()
  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  # this shows the flash error
  # def home(conn, _params) do
  #   conn
  #   |> put_flash(:error, "Let's pretend we have an error.")
  #   |> render(:home, layout: false)
  # end

  # this redirects to /redirect_test
  # def home(conn, _params) do
  #   redirect(conn, to: ~p"/redirect_test")
  # end

  # def redirect_test(conn, _params) do
  #   render(conn, :home, layout: false)
  # end
end
