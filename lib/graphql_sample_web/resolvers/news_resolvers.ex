defmodule GraphqlSampleWeb.NewsResolver do
  alias GraphqlSample.News

  def all_links(_root, _args, _info) do
    links = News.list_links()
    {:ok, links}
  end

  def link(_root, %{id: id}, _info) do
    {:ok, GraphqlSample.News.get_link!(id)}
  end
end
