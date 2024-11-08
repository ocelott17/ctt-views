require_relative "views/version"

module Ctt
  class Engine < ::Rails::Engine
    initializer "ctt-views.views" do
      ActiveSupport.on_load(:action_view) do
        include NomeDellaTuaGem::ViewHelpers
      end
    end
  end

  module Views
    class Error < StandardError; end
  end
end
