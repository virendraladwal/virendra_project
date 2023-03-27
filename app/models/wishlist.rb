class Wishlist < ApplicationRecord
  belongs_to :product
  belongs_to :merchant
end
