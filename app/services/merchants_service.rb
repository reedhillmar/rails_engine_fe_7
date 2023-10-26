class MerchantsService < ApplicationService
  def conn
    Faraday.new(url: 'http://localhost:3000')
  end

  def get_url(url)
    conn.get("/api/v1/#{url}")
  end

  def all_merchants
    json_parse(get_url('/merchants'))
  end

  def merchant(merchant_id)
    json_parse(get_url("/merchants/#{merchant_id}"))
  end
  
  def merchant_items(merchant_id)
    json_parse(get_url("/merchants/#{merchant_id}/items"))
  end
end