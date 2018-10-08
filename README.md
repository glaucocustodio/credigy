# Credigy

Um wrapper para o serviço SOAP da Credigy.

## Instalação

Adicione a linha no seu Gemfile

```ruby
gem 'credigy'
```

Execute:

    $ bundle

Ou instale você mesmo:

    $ gem install credigy

## Uso

Chamadas implementadas:

- GeneratePromise
- GetAccounts
- GetProviders
- Login

## Desenvolvimento

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
