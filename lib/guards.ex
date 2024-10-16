defmodule Guards do
  @moduledoc """
  Documentation for `Guards`.
  Guards expand on pattern matchingwith complex checks
  Guards begin with the when keyword folllowed by a boolean expression
  These expressions are special pure functions that return the same value for a given input, true or false
  """

  # a common guard is type checks, Kernel gives us functions to use for this
  def type(value) when is_integer(value), do: :integer
  def type(value) when is_float(value), do: :float
  def type(value) when not is_number(value), do: :not_number

  # comparisons
  def is_single_digit(value) when is_integer(value) and value < 10, do: true
  def is_single_digit(value) when not is_integer(value) or value > 9, do: false

  # define own guards with defguard, defguardp (for private)
  defguardp is_even(value) when is_integer(value) and rem(value, 2) == 0

  def return_even_numbers(value \\ :empty)
  def return_even_numbers(value) when is_even(value), do: value
  def return_even_numbers(value) when not is_even(value), do: :not_even

  # create the is_under_max_load? function from pattern matching using guards
end
