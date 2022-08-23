defmodule SimplesChat.Repo do
  use Ecto.Repo,
    otp_app: :simples_chat,
    adapter: Ecto.Adapters.Postgres
end
