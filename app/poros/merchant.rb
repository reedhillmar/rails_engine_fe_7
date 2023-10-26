class Merchant
  attr_reader :merchant_id, :name

  def initialize(merchant)
    @merchant_id = merchant[:id]
    @name = merchant[:attributes][:name]
  end
end