require 'test_helper'
require 'gaslight/google/client'

module Gaslight::Google
  class ClientTest < Minitest::Test
    def setup
      VCR.insert_cassette name
      @gaslight = Gaslight::Google::Client.new
    end

    def teardown
      @gaslight = nil
      VCR.eject_cassette
    end

    def test_available_links
      links = { 'posts.list' => '/api/posts' }
      assert_equal links, @gaslight.available_links
      assert_equal 1, @gaslight.available_links.size
    end

    def test_link_for
      assert_equal '/api/posts', @gaslight.link_for('posts.list')
    end
  end
end

