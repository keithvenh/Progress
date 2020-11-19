require 'test_helper'

class TranslationsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get translations_edit_url
    assert_response :success
  end

end
