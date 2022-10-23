class BulkOrder < ApplicationRecord
    validates :integer, presence: true
    validates :adjusted_price, presence: true

    belongs_to :item
end
