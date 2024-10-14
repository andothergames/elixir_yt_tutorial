defmodule LinkedLists do
  @moduledoc """
  Documentation for `LinkedLists`.
  """

  def get_equipment_list() do
    ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]
  end

  def get_first_item(list) do
    hd(list)
  end

  def remove_first_item(list) do
    tl(list)
  end

  def add_slow(list, item) do
    # place string in square brackets when adding to list
    # this requires us to iterate through the whole list to add to end
    list ++ [item]
  end

  def add_fast(list, item) do
    # this instead reverses list, prepends item to it, then re-reverses list
    list
    |> Enum.reverse()
    |> then(fn reversed -> [item | reversed] end)
    |> Enum.reverse()
  end

  def remove_item(list, index) do
    List.delete_at(list, index)
  end

  def count_items(list) do
    length(list)
  end

  def check_for_item(list, item) do
    item in list
  end
end
