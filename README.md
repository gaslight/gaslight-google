# Gaslight::Google

The `gaslight-google` gem provides an interface for interacting with the 
Gaslight Google API. 

## Installation

This gem requires a runtime dependency to 'gaslight/gaslight-client',
which is not published. You'll need to clone that repo locally and `rake
install` it to add it to your `gem list`

Add this line to your application's Gemfile:

    gem 'gaslight-google', github: 'gaslight/gaslight-google'

And then execute:

    $ bundle

## Usage

Getting a list of all of the posts is easy:

    Gaslight::Google::Post.all


## Contributing

1. Fork it ( https://github.com/gaslight/gaslight-google/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
