require 'test_helper'

class RspAnswerMailerTest < ActionMailer::TestCase
  test "answer1" do
    mail = RspAnswerMailer.answer1
    assert_equal "Answer1", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "answer2" do
    mail = RspAnswerMailer.answer2
    assert_equal "Answer2", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
