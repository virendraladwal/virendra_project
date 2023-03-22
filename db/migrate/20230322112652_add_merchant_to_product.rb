class AddMerchantToProduct < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :merchant, null: false, foreign_key: true
  end
end
