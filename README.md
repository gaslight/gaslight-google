# Gaslight::Google

The `gaslight-google` gem provides an interface for interacting with the Gaslight Google API.

## Installation

Add this line to your application's Gemfile:

    gem 'gaslight-google', github: 'gaslight/gaslight-google'

And then execute:

    $ bundle

## Usage

Getting a list of all of the posts is easy:

    Gaslight::Google::Post.all

## Contributing

This gem requires 'gaslight/gaslight-client', which is hosted on github. I was unable to get this gem to require 'gaslight-client' without cloning it locally and `rake install` it to my system gems `gem list`. If you want to do development on this gem you might have to do the same

1. Fork it ( https://github.com/gaslight/gaslight-google/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
