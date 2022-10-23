class FreeItemsController < ApplicationController
    def index
        @free_items = FreeItem.all        
    end
    
    def new
        @free_items = FreeItem.all        
        @free_item = FreeItem.all
    end

    def create
        @free_item = FreeItem.new(free_item_params)

        if @free_item.save
            redirect_to free_items_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        @free_item = FreeItem.find(params[:id])
        @free_item.destroy
        redirect_to free_items_path, status: :see_other
    end

    private

    def free_item_params
        params.require(:free_item).permit(:quantity, :item_id, :free_item)
    end
end
