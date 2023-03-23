class Product < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true, length: { minimum: 10 }
    validates :price, presence: true
    validates :category, presence: true
    validates  :status , presence: true
    belongs_to :category
    has_many :productimages


    enum :status, { "Pending": "Pending", "Accept": "Accept", "Reject": "Reject"},_default: :"Pending"
end 