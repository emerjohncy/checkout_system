class CheckoutItemsController < ApplicationController
    before_action :set_checkout

    def create
        @checkout_item = @checkout.checkout_items.new(checkout_params)
        @checkout.save
        session[:checkout_id] = @checkout.id

        if @checkout_item.save
            redirect_to cart_path
        else
            redirect_to cart_path, status: :unprocessable_entity
        end
    end

    def destroy
        @checkout_item = @checkout.checkout_items.find(params[:id])
        @checkout_item.destroy
        redirect_to cart_path, status: :see_other
    end

    private

    def set_checkout
        @checkout = helpers.current_checkout
    end

    def checkout_params
        params.require(:checkout_item).permit(:item_id)
    end
end
