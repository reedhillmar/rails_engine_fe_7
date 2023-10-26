class MerchantsFacade
  def initialize(merchant_id = nil)
    @merchant_id = merchant_id.to_i
  end

  def all_merchants
    data = MerchantsService.new.all_merchants[:data]
    data.map do |merchant|
      Merchant.new(merchant)
    end
  end
  
    def merchant
      Merchant.new(MerchantsService.new.merchant(@merchant_id)[:data])
    end

  def merchant_items
    data = MerchantsService.new.merchant_items(@merchant_id)[:data]
    data.map do |item|
      Item.new(item)
    end
  end
end