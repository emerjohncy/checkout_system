class BulkOrdersController < ApplicationController
    def index
        @bulk_orders = BulkOrder.all
    end
    
    def new
        @bulk_orders = BulkOrder.all
        @bulk_order = BulkOrder.new
    end
    
    def create
        @bulk_order = BulkOrder.new(bulk_order_params)

        if @bulk_order.save
            redirect_to bulk_orders_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        @bulk_order = BulkOrder.find(params[:id])
        @bulk_order.destroy
        redirect_to bulk_orders_path, status: :see_other
    end

    private

    def bulk_order_params
        params.require(:bulk_order).permit(:min_quantity, :item_id, :adjusted_price)
    end
end