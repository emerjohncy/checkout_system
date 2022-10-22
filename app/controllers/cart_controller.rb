class CartController < ApplicationController
    before_action :set_checkout

    def show
        @checkout_items = helpers.current_checkout.checkout_items
        @checkout_item = @checkout.checkout_items.new
    end

    def destroy
        reset_session
        redirect_to cart_path
    end

    private

    def set_checkout
        @checkout = helpers.current_checkout
    end
end
