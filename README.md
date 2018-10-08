# Credigy

[![Build Status](https://travis-ci.org/glaucocustodio/credigy.svg?branch=master)](https://travis-ci.org/glaucocustodio/credigy)
[![Coverage Status](https://coveralls.io/repos/github/glaucocustodio/credigy/badge.svg)](https://coveralls.io/github/glaucocustodio/credigy)
[![Maintainability](https://api.codeclimate.com/v1/badges/e87c5a00b82c525bb7de/maintainability)](https://codeclimate.com/github/glaucocustodio/credigy/maintainability)

Um wrapper para o serviço SOAP da Credigy.

Consulte o [manual](https://github.com/glaucocustodio/credigy/blob/master/lib/manual/WebServiceCredigyV1.6.pdf) para mais informações.

## Instalação

Adicione a linha no seu Gemfile

```ruby
gem 'credigy'
```

Execute:

    $ bundle

Ou instale você mesmo:

    $ gem install credigy

## Chamadas implementadas

- [Login](#login)
- [AcceptLegalTerms](#acceptlegalterms)
- [GeneratePromise](#generatepromise)
- [GetAccounts](#getaccounts)
- [GetProviders](#getproviders)

### Login

```ruby
response = Credigy::Login.new(user: 'user', password: '123456', cpf: '987654321').call
authorization_token = response.authorization_token
```

### AcceptLegalTerms

```ruby
Credigy::LegalTerms.new(authorization_token).call
```

### GeneratePromise

```ruby
Credigy::Promise.new(
  authorization_token,
  accounts: ['123'], installments: 3, first_installment_date: Date.today, agreement_value: 1580.7
).call
```

### GetAccounts

```ruby
response = Credigy::Account.new(authorization_token).call
response.all # array de contas
```

### GetProviders

```ruby
response = Credigy::Provider.new(authorization_token).call
response.all # array de provedores
```

## Configuração (opcional)

É possível configurar o comportamento dessa gem via:

```ruby
Credigy.configure do |config|
  config.verbose = true # default é false
  config.env = :production # qualquer outro symbol será considerado ambiente de desenvolvimento
  config.wsdl = 'http://proxy.meusite.com/wsdl' # caso queira adicionar um proxy
end
```

Se estiver no Rails, esse arquivo pode ser colocado em `config/initializers/credigy.rb`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
