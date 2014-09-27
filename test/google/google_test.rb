require 'test_helper'
require "gaslight/google/version"
require 'gaslight/google/post'

module Gaslight::Google
  class PostTest < Minitest::Test
    def setup
      VCR.insert_cassette name
    end

    def teardown
      VCR.eject_cassette
    end

    def test_list_response
      @response = Post.all
      assert_equal 1000, @response.size
    end
  end
end
