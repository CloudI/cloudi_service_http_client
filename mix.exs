defmodule CloudIServiceHttpClient do
  use Mix.Project

  def project do
    [app: :cloudi_service_http_client,
     version: "1.5.1",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:trie, "~> 1.5.1"},
     {:uuid, "~> 1.5.1", hex: :uuid_erl},
     {:cloudi_core, "~> 1.5.1"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework HTTP client Service"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown),
     maintainers: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_http_client"}]
   end
end
