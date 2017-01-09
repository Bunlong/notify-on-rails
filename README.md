# Notify::On::Rails

notify-on-rails is a simple standard Bootstrap alerts  notifications.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'notify-on-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install notify-on-rails

To use notify-on-rails add this require statement to your application.js file:

```ruby
//= require notify-on-rails
```

## Usage

Add notices and notify-on-rails alerts into your rails application.html.erb.

```ruby
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
    <meta content="width=device-width" name="viewport"/>
    <title>Wedding</title>
    <%= csrf_meta_tags %>
    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>
  <body>
    <% if notice %>
      <p id="notice" style="display: none;">
        <%= notice %>
      </p>
    <% end %>
    <%= yield %>
    <script>
      $.notify($("#notice").html(), {
        allow_dismiss: false,
        placement: {
          from: 'bottom',
          align: 'left'
        }
      });
    </script>
  </body>
</html>
```

Then in your controller you have to add flash notice.

```ruby
class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    if @user.save!
      flash[:success] = "Welcome to notify-on-rails"
      redirect_to @user
    else
      render 'new'
    end
  end
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/notify-on-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
