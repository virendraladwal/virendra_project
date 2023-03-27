json.extract! wishlist, :id, :order, :product_id, :merchant_id, :created_at, :updated_at
json.url wishlist_url(wishlist, format: :json)
