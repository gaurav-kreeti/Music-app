# frozen_string_literal: true

# This is test file
require 'test_helper'

class WelcomesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get welcomes_index_url
    assert_response :success
  end
end
