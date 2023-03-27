json.extract! order, :id, :status, :product_id, :cart_id, :merchant_id, :created_at, :updated_at
json.url order_url(order, format: :json)
