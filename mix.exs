#-*-Mode:elixir;coding:utf-8;tab-width:2;c-basic-offset:2;indent-tabs-mode:()-*-
# ex: set ft=elixir fenc=utf-8 sts=2 ts=2 sw=2 et nomod:

defmodule CloudIServiceHttpClient do
  use Mix.Project

  def project do
    [app: :cloudi_service_http_client,
     version: "2.0.5",
     language: :erlang,
     erlc_options: [
       :deterministic,
       :debug_info,
       :warn_export_vars,
       :warn_unused_import,
       #:warn_missing_spec,
       :warnings_as_errors],
     description: description(),
     package: package(),
     deps: deps()]
  end

  defp deps do
    [{:trie, ">= 2.0.5"},
     {:uuid, ">= 2.0.5", [hex: :uuid_erl]},
     {:cloudi_core, ">= 2.0.5"}]
  end

  defp description do
    "Erlang/Elixir Cloud Framework HTTP client Service"
  end

  defp package do
    [files: ~w(src doc test rebar.config README.markdown LICENSE),
     maintainers: ["Michael Truog"],
     licenses: ["MIT"],
     links: %{"Website" => "https://cloudi.org",
              "GitHub" => "https://github.com/CloudI/" <>
                          "cloudi_service_http_client"}]
   end
end
