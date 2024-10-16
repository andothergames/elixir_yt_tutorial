defmodule GuardsTest do
  use ExUnit.Case
  alias Guards

  describe("type/1") do
    test "returns correct type atom for integer" do
      assert Guards.type(2) === :integer
    end

    test "returns correct type atom for float" do
      assert Guards.type(2.5) === :float
    end

    test "returns correct type atom for not_number" do
      assert Guards.type("cabbage") === :not_number
    end
  end

  describe("is_single_digit/1") do
    test "returns true when number is a single digit" do
      assert Guards.is_single_digit(1) === true
    end

    test "returns false when number is not a single digit" do
      assert Guards.is_single_digit(10) === false
    end
  end

  describe("return_even_numbers/1") do
    test "returns value when given an even number" do
      assert Guards.return_even_numbers(24) === 24
    end

    test "returns :not_even atom when not given an even number" do
      assert Guards.return_even_numbers(3) === :not_even
    end

    test "returns :not_even atom when not given any number" do
      assert Guards.return_even_numbers() === :not_even
    end
  end
end
