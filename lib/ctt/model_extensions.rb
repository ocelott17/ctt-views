module CttViews
  module ModelExtensions
    extend ActiveSupport::Concern

    class_methods do

      # Defines fields for dynamic forms
      def ctt_form_fields(cards = nil)
        @ctt_form_fields ||= [{ fields: {} }]
        @ctt_form_fields = cards if cards
        @ctt_form_fields
      end

      # Define fields for dynamic lists
      def ctt_list_fields(fields = nil)
        @ctt_list_fields ||= []
        @ctt_list_fields = fields if fields
        @ctt_list_fields
      end
      
    end
  end
end
