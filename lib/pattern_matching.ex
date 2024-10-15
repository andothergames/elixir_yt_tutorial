defmodule(EquipmentDetails) do
  def get_equipment() do
    [:space_helmet, :space_suit, :snacks, :grapling_hook, :probe]
  end

  def item_details(:space_helmet), do: {3, :kg, 1}
  def item_details(:space_suit), do: {16, :kg, 1}
  def item_details(:snacks), do: {0.5, :kg, 10}
  def item_details(:grapling_hook), do: {10, :kg, 1}
  def item_details(:probe), do: {6, :kg, 1}

  def item_details(_other) do
    raise "unknown item"
  end

  defp max_flying_load, do: 55
  defp convert_kg_to_lb(kg_value), do: kg_value * 2.2

  def get_total_load([]), do: 0

  def get_total_load([head | tail]) do
    (head
     |> EquipmentDetails.item_details()
     |> elem(0)
     |> convert_kg_to_lb()
     |> convert_kg_to_lb()) + get_total_load(tail)
  end

  def is_under_max_load?(list) do
    final_weight = get_total_load(list)

    if final_weight < max_flying_load() do
      true
    else
      false
    end
  end
end
