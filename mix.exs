defmodule ImageBase64Handler.Mixfile do
  use Mix.Project

  def project do
    [
      app: :image64,
      version: "0.0.2",
      elixir: "~> 1.2",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    []
  end

  defp description do
    """
      A tool for working with base64 encoded images
    """
  end

  defp package do
    [# These are the default files included in the package
     name: :image64,
     files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["Michael Navazhylau"],
     licenses: ["MIT Liscense"],
     links: %{"GitHub" => "https://github.com/Mechasparrow/image64"}]
  end

end
