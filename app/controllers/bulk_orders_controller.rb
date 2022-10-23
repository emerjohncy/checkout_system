class BulkOrdersController < ApplicationController
    def index
        @bulk_orders = BulkOrder.all
    end
end