class Order < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :merchant
end
