require 'test_helper'

class AdoptedLanguagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get adopted_languages_new_url
    assert_response :success
  end

  test "should get edit" do
    get adopted_languages_edit_url
    assert_response :success
  end

  test "should get show" do
    get adopted_languages_show_url
    assert_response :success
  end

end
