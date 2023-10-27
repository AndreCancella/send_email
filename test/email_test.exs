defmodule EmailTest do
  use ExUnit.Case
  doctest Email

  test "greets the world" do
    assert Email.hello() == :world
  end
end
