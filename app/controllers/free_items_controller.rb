class FreeItemsController < ApplicationController
    def index
        @free_items = FreeItem.all        
    end
end
