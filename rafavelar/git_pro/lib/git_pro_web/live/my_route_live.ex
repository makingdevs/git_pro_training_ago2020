defmodule GitProWeb.MyRouteLive do
  use GitProWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
