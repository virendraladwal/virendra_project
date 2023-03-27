class Cart < ApplicationRecord
    # belongs_to :qty   
    belongs_to :merchant
    belongs_to :product
end
