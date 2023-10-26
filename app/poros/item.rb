class Item
  attr_reader :item_id, :name

  def initialize(item)
    @item_id = item[:id]
    @name = item[:attributes][:name]
  end
end