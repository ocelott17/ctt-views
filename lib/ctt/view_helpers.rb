module CttViews
  module ViewHelpers

    # Render form
    def ctt_form(record, url: nil, method: nil, actions: [], submit_label: 'Submit', submit_class: nil, data_turbo: nil, data_turbo_prefetch: nil, data_turbo_frame: nil, data_turbo_confirm: nil)
      render partial: 'forms/form', locals: {
        model: record,
        url: url || url_for(record),
        method: method || (record.persisted? ? :patch : :post),
        actions: actions,
        submit_label: submit_label,
        submit_class: submit_class,
        data_turbo: data_turbo,
        data_turbo_prefetch: data_turbo_prefetch,
        data_turbo_frame: data_turbo_frame,
        data_turbo_confirm: data_turbo_confirm
      }
    end

    # Render list
    def ctt_list(collection, model, url: nil, filters: {}, actions: [], data_turbo: nil, data_turbo_frame: nil)
      render partial: 'lists/list', locals: {
        collection: collection,
        model: model,
        url: url,
        filters: filters,
        actions: actions,
        data_turbo: data_turbo,
        data_turbo_frame: data_turbo_frame
      }
    end

  end
end
