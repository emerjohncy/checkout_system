class FreeItem < ApplicationRecord
    validates :quantity, presence: true
    validates :free_item, presence: true
    
    belongs_to :item
end
