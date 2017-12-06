defmodule GraphqlSampleWeb.NewsResolver do
  alias GraphqlSample.News

  def all_links(_root, _args, _info) do
    links = News.list_links()
    {:ok, links}
  end

  def link(_root, %{id: id}, _info) do
    {:ok, GraphqlSample.News.get_link!(id)}
  end

  def create_link(_root, args, _info) do
    case News.create_link(args) do
      {:ok, link} ->
        {:ok, link}
      _error ->
        {:error, "could not create link"}
    end
  end
end
