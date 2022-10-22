class Item < ApplicationRecord
    validates :sku, presence: true
    validates :name, presence: true
    validates :price, presence: true
end
