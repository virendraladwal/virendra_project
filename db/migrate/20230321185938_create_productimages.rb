class CreateProductimages < ActiveRecord::Migration[7.0]
  def change
    create_table :productimages do |t|
      t.string :image
      t.references :product, null: false, foreign_key: true
      t.timestamps
    end
  end
end
