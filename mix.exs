defmodule CloudIServiceHttpClient do
  use Mix.Project

  def project do
    [app: :cloudi_service_http_client,
     version: "1.4.0",
     language: :erlang,
     description: description,
     package: package,
     deps: deps]
  end

  defp deps do
    [{:trie, "~> 1.4.0"},
     {:uuid, "~> 1.4.0", hex: :uuid_erl},
     {:cloudi_core, "~> 1.4.0"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework HTTP client Service"
  end

  defp package do
    [files: ~w(src doc rebar.config README.markdown),
     contributors: ["Michael Truog"],
     licenses: ["BSD"],
     links: %{"Website" => "http://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_http_client"}]
   end
end
