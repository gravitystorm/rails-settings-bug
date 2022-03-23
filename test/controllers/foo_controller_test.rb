require "test_helper"

class FooControllerTest < ActionDispatch::IntegrationTest
  def test_settings
    get "/"
    assert Rails.application.config.action_controller.raise_on_open_redirects, 'config setting should be true'
    assert ActionController::Base.raise_on_open_redirects, 'actual value should be true'
  end
end
