defmodule SimplesChatWeb.ChatLive do
  use SimplesChatWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :chat, "")}
  end

  def handle_event("ok", %{"text" => ok}, socket) do
    {:noreply, assign(socket, :chat, Earmark.as_html!(ok))}
  end
end
