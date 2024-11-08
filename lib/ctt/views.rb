require_relative "views/version"

require_relative "filter_helpers" 
require_relative "view_helpers" 
require_relative "model_extensions" 

module CttViews
  class Engine < ::Rails::Engine
    initializer "ctt-views.views" do
      ActiveSupport.on_load(:action_view) do
        include CttViews::ViewHelpers
      end

      ActiveSupport.on_load(:active_record) do
        include CttViews::ModelExtensions
        include CttViews::FiltersHelper
      end
    end
  end

  module Views
    class Error < StandardError; end
  end
end
