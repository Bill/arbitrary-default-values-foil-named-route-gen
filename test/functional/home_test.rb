require File.dirname(__FILE__) + '/../test_helper'
require 'ruby-debug'
Debugger.start

# grab our HomeController because we're going to test it
require 'home_controller'

# Raise errors beyond the default web-based presentation
class HomeController; def rescue_action(e) raise e end; end

class HomeControllerTest < Test::Unit::TestCase
  def setup
    @controller = HomeController.new
    @request = ActionController::TestRequest.new
    @response = ActionController::TestResponse.new
  end

  def test_index_explicit_extra_stuff
    # URL generation under get works if we specify the :extra_stuff explicitly
    assert_generates( '/', :controller => 'home', :action => 'index', :extra_stuff => 'the_stuff')
  end
  def test_index_no_explicit_extra_stuff
    # but URL generation fails if we leave it off
    assert_generates( '/', :controller => 'home', :action => 'index')
  end
end