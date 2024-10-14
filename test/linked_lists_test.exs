defmodule LinkedListsTest do
  use ExUnit.Case
  alias LinkedLists

  @equipment_list ["Space Helmet", "Space Suit", "Snacks", "Grapling Hook", "Probe"]

  describe "get_equipment_list/0" do
    test "returns the predefined equipment list" do
      assert LinkedLists.get_equipment_list() == @equipment_list
    end
  end

  describe "get_first_item/1" do
    test "returns the first item from the list" do
      assert LinkedLists.get_first_item(@equipment_list) == "Space Helmet"
    end
  end

  describe "remove_first_item/1" do
    test "removes the first item from the list" do
      assert LinkedLists.remove_first_item(@equipment_list) == [
               "Space Suit",
               "Snacks",
               "Grapling Hook",
               "Probe"
             ]
    end
  end

  describe "add_slow/2" do
    test "adds an item to the end of the list" do
      assert LinkedLists.add_slow(@equipment_list, "Oxygen Tank") == [
               "Space Helmet",
               "Space Suit",
               "Snacks",
               "Grapling Hook",
               "Probe",
               "Oxygen Tank"
             ]
    end
  end

  describe "add_fast/2" do
    test "adds an item to the end of the list (quickly)" do
      assert LinkedLists.add_fast(@equipment_list, "Oxygen Tank") == [
               "Space Helmet",
               "Space Suit",
               "Snacks",
               "Grapling Hook",
               "Probe",
               "Oxygen Tank"
             ]
    end
  end

  describe "remove_item/2" do
    test "removes an item by index from the list" do
      assert LinkedLists.remove_item(@equipment_list, 2) == [
               "Space Helmet",
               "Space Suit",
               "Grapling Hook",
               "Probe"
             ]
    end
  end

  describe "count_items/1" do
    test "returns the count of items in the list" do
      assert LinkedLists.count_items(@equipment_list) == 5
    end
  end

  describe "check_for_item/2" do
    test "returns true if the item is in the list" do
      assert LinkedLists.check_for_item(@equipment_list, "Space Suit")
    end

    test "returns false if the item is not in the list" do
      refute LinkedLists.check_for_item(@equipment_list, "Laser Gun")
    end
  end
end
