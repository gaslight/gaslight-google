# Gaslight::People

The `gaslight-people` gem provides an interface for interacting with the 
Gaslight People API. 

## Installation

Add this line to your application's Gemfile:

    gem 'gaslight-people', github: 'gaslight/gaslight-people'

And then execute:

    $ bundle

## Usage

Getting a list of all of the people is easy:

    Gaslight::People.all

It is also common to just want a list of people who work for Gaslight:

    Gaslight::People.gaslight


## Contributing

1. Fork it ( https://github.com/gaslight/gaslight-people/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
