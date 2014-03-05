Dynamo.under_test(Elixir.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule Elixir.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
