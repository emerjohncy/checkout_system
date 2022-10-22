class Checkout < ApplicationRecord
    has_many :checkout_items
    before_save :set_subtotal
    before_save :set_total

    def subtotal
        checkout_items.collect { |checkout_item| checkout_item.valid? ? checkout_item.item.price : 0 }.sum
    end

    def total
        checkout_items.collect { |checkout_item| checkout_item.valid? ? checkout_item.item.price : 0 }.sum
    end

    private
    
    def set_subtotal
        self[:subtotal] = subtotal
    end

    def set_total
        self[:total] = total
    end
end
