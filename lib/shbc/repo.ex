defmodule Shbc.Repo do
  use Ecto.Repo,
    otp_app: :shbc,
    adapter: Ecto.Adapters.Postgres
end
