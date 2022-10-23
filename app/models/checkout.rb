class Checkout < ApplicationRecord
    has_many :checkout_items
    before_save :get_free_items
    before_save :set_subtotal
    before_save :set_total

    def subtotal
        checkout_items.collect { |checkout_item| checkout_item.valid? ? checkout_item.item.price : 0 }.sum
    end

    def total
        overall_total = checkout_items.collect { |checkout_item| checkout_item.valid? ? checkout_item.item.price : 0 }.sum
        
        rules = Array.new
        FreeItem.all.each do |rule|
            rules.push([rule.item_id, rule.quantity, rule.free_item])
        end

        rules.each do |rule|
            item_quantity = 0
            
            checkout_items.each do |item|
                if rule[0] == item.item_id
                    item_quantity += 1
                end    
            end

            if item_quantity >= rule[1]
                quantity_of_free = item_quantity / rule[1]

                quantity_in_cart = 0
                checkout_items.each do |item|
                    if item.item_id == Item.where(sku: rule[2]).first.id
                        quantity_in_cart += 1
                    end
                end

                if quantity_in_cart >= quantity_of_free
                    overall_total = overall_total - (quantity_of_free * Item.where(sku: rule[2]).first.price)
                end
            end
        end
        overall_total
    end

    private

    def get_free_items
        @free_items_rules = FreeItem.all
    end
    
    def set_subtotal
        self[:subtotal] = subtotal
    end

    def set_total
        self[:total] = total
    end
end
