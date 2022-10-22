class Item < ApplicationRecord
    validates :sku, presence: true,
                    uniqueness: true
    validates :name, presence: true
    validates :price, presence: true

    has_many :checkout_items
    has_many :free_items
end
