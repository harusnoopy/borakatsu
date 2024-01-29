require "test_helper"

class Public::ParticipationsControllerTest < ActionDispatch::IntegrationTest
  test "should get confirm" do
    get public_participations_confirm_url
    assert_response :success
  end

  test "should get index" do
    get public_participations_index_url
    assert_response :success
  end

  test "should get show" do
    get public_participations_show_url
    assert_response :success
  end
end
