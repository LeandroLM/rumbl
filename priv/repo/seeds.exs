# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Rumbl.Repo.insert!(%Rumbl.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Rumbl.Repo
alias Rumbl.Multimidia

for category <- ~w(Action Drama Romance Comedy Sci-Fi) do
  Repo.get_by(Multimidia.Category, name: category) ||
    Repo.insert!(%Multimidia.Category{name: category})
end
