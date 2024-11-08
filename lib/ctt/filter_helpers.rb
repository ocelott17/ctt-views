module CttViews
  module FiltersHelper

    # Applies the filter on the collection based on scope and order params
    def apply_filters(collection)
      if params[:scope] && params[:order]
        scope = params[:scope]
        current_order = params[:current_order].to_i
        order_options = params[:order_options]
        order = params[:order_options][current_order]
        current_order.to_i < order_options.length - 1 ? @current_order = current_order + 1 : @current_order = 0
        collection = collection.send(scope, order) if collection.respond_to?(scope) && scope != ''
      end
      collection
    end
    
  end
end
