# FormulaeRuby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'formulae_ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install formulae_ruby


## Usage

### Forms

- Get all Forms

```ruby
FormulaeRuby::FormClient.new(api_key: 'API_KEY').all
```

- Get a Specific Form

```ruby
FormulaeRuby::FormClient.new(api_key: 'API_KEY').find(1)
```


## Configuration

- `BASE_URL` environment variable as default Api Base Url.

## Tests


```sh
bundle exec rspec
```

