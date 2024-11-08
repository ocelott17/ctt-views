module NomeDellaTuaGem
  module ModelExtensions
    extend ActiveSupport::Concern

    class_methods do
      def ctt_fields(cards = nil)
        @ctt_fields ||= [{ fields: {} }]
        @ctt_fields = cards if cards
        @ctt_fields
      end
    end
  end
end
