# Ctt::Views

Ctt-views offers some useful partials to help you create forms and lists in your rails app.

THIS GEM DOES NOT PROVIDE CSS STYLES FOR THE VIEWS, IT ONLY ASSIGNS CSS CLASSES

# Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add ctt-views

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install ctt-views

# Forms

## Creation

You have to specify in the model.rb file the fields you want to display in your form, g.e.:

ctt_form_fields [
    { 
        title: 'Create new User',
        fields: {
            first_name: { required: true },
            last_name: { required: false },
            email: { required: true }
            role: { hidden: true, value: 'admin' },
        } 
    }
]

Each hash you write into ctt_fields will print a <div class="c-form__card"></div>.
This div will group all the fields you specify inside of the hash.
Each card can have a separate title. It's empty by default.
So if you want to create more cards, you must write something like this:

ctt_form_fields [
    # First card
    { 
        title: 'General informations',
        fields: {
            first_name: { required: true },
            last_name: { required: true }
        } 
    }
    # Second card
    {
        title: 'Email',
        fields: {
            email: { required: true }
            role: { hidden: true, value: 'admin' },
        }
    }
]

Then you can create a form from a view by using:

<%= ctt_form(model, url: url, method: method ) %>

## Options

### Required

// path the form will submit to
url: url || url_for(record)
// model you're gonna use in the form
model: record
// form method
method: method || (record.persisted? ? :patch : :post) 

### Optional

// optional actions that will appear near the submit
actions: actions
    -- all action options:
    - show_if: boolean
    - label: string
    - path: path
    - method: method
    - class: string
    - turbo: boolean
    - turbo_frame: string
    - turbo_prefetch: boolean
    - turbo_confirm: string

// submit options
submit_label: submit_label
submit_class: submit_class

// turbo options
data_turbo: boolean
data_turbo_prefetch: boolean
data_turbo_frame: string
data_turbo_confirm: string


# Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ctt-views.
