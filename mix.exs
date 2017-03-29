#-*-Mode:elixir;coding:utf-8;tab-width:2;c-basic-offset:2;indent-tabs-mode:()-*-
# ex: set ft=elixir fenc=utf-8 sts=2 ts=2 sw=2 et nomod:

defmodule CloudIServiceHttpClient do
  use Mix.Project

  def project do
    [app: :cloudi_service_http_client,
     version: "1.7.0",
     language: :erlang,
     description: description(),
     package: package(),
     deps: deps()]
  end

  defp deps do
    [{:trie, "~> 1.7.0"},
     {:uuid, "~> 1.7.0", hex: :uuid_erl},
     {:cloudi_core, "~> 1.7.0"}]
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
