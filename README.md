# AdvancedSessionStore

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/advanced_session_store`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'advanced_session_store'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install advanced_session_store

## Installation

For Rails 3+, adding this to your `Gemfile` will do the trick.

``` ruby
gem 'advanced-session-store'
```

## Configuration

See `lib/advanced-session-store.rb` for a list of valid options.
In your Rails app, throw in an initializer with the following contents:

``` ruby
Rails.application.config.session_store :advanced_session_store, {
  key: 'your_session_key',
  redis: {
    expire_after: 120.minutes,  # cookie expiration
    ttl: 120.minutes,           # Redis expiration, defaults to 'expire_after'
    key_prefix: 'myapp:session:',
    url: 'redis://localhost:6379/0',
  }
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/advanced_session_store. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the AdvancedSessionStore project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/advanced_session_store/blob/master/CODE_OF_CONDUCT.md).
