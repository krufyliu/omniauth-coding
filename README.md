# Omniauth Coding

OmniAuth strategy for authenticating to Coding. To use it, you'll need to sign up for an OmniAuth2 Application ID and SECRET on the [Coding Application Page](https://coding.net/user/account/setting/applications)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-coding'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-coding

## Rack App Usage
### basic usage
```ruby 
use OmniAuth::Builder do
  provider :coding, ENV["CODING_KEY"], ENV["CODING_SECRET"]
end
```

### with scope
```ruby 
use OmniAuth::Builder do
  provider :coding, ENV["CODING_KEY"], ENV["CODING_SECRET"], scope: "user"
end
```

## Rails Application without devise
create `config/initialize/omniauth.rb`
```ruby
Rails.application.middleware.use OmniAuth::Builder do
  provider :coding, ENV['CODING_KEY'], ENV['CODING_SECRET']
end
```


## Development
To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/krufyliu/omniauth-coding. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

