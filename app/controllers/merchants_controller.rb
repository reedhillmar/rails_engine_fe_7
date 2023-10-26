class MerchantsController < ApplicationController 

  def index
    @facade = MerchantsFacade.new.all_merchants
  end

  def show
    @facade = MerchantsFacade.new(params[:id])
  end
end