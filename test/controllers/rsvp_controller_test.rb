require 'test_helper'

class RsvpControllerTest < ActionDispatch::IntegrationTest
  test "should get question_1" do
    get rsvp_question_1_url
    assert_response :success
  end

  test "should get question_2" do
    get rsvp_question_2_url
    assert_response :success
  end

end
