module CttViews
  module ViewHelpers
    # Helper method to render the form, accepts URL, method, actions, submit_label and turbo attributes
    def ctt_form(record, url: nil, method: nil, actions: nil, submit_label: 'Submit', data_turbo: nil, data_turbo_prefetch: nil, data_turbo_frame: nil, data_turbo_confirm: nil)
      render partial: 'forms/form', locals: {
        model: record,
        url: url || url_for(record),
        method: method || (record.persisted? ? :patch : :post),
        actions: actions,
        submit_label: submit_label,
        data_turbo: data_turbo,
        data_turbo_prefetch: data_turbo_prefetch,
        data_turbo_frame: data_turbo_frame,
        data_turbo_confirm: data_turbo_confirm
      }
    end
  end
end
