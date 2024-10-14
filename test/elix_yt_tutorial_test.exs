defmodule ElixYtTutorialTest do
  use ExUnit.Case
  doctest ElixYtTutorial

  test "greets the world" do
    assert ElixYtTutorial.hello() == :world
  end
end
