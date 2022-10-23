class BulkOrder < ApplicationRecord
    validates :min_quantity, presence: true
    validates :adjusted_price, presence: true

    belongs_to :item
end
