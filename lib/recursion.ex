defmodule Recursion do
  @moduledoc """
  Documentation for `Recursion`.
  """
  def get_equipment_list() do
    ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Cabbage"]
  end

  # loops needs a base case and a recursive case
  def loop([]), do: nil

  def loop([head | tail]) do
    IO.puts(head)
    # this will at some point match the base case
    loop(tail)
  end

  # anything in List or Kernel module that maps is doing recursion in the backend
  # such as length(list):
  def equipment_count([]), do: 0
  def equipment_count([_head | tail]), do: 1 + equipment_count(tail)

  def format_equipment_list([]), do: []

  def format_equipment_list([head | tail]) do
    [head |> String.downcase() |> String.replace(" ", "_") | format_equipment_list(tail)]
  end

  def occurrence_count([], _value), do: 0
  def occurrence_count([_head | _tail], "Snacks"), do: "tasty treat"

  def occurrence_count([value | tail], value) do
    1 + occurrence_count(tail, value)
  end

  def occurrence_count([_head | tail], value), do: occurrence_count(tail, value)
end
