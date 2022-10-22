class CheckoutItem < ApplicationRecord
    belongs_to :item
    belongs_to :checkout
end
