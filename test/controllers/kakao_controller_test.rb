require 'test_helper'

class KakaoControllerTest < ActionController::TestCase
  test "should get chat_control" do
    get :chat_control
    assert_response :success
  end

  test "should get keyboard_init" do
    get :keyboard_init
    assert_response :success
  end

end
