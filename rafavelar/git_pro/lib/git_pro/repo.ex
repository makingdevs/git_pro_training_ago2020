defmodule GitPro.Repo do
  use Ecto.Repo,
    otp_app: :git_pro,
    adapter: Ecto.Adapters.Postgres
end
