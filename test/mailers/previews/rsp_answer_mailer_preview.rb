# Preview all emails at http://localhost:3000/rails/mailers/rsp_answer_mailer
class RspAnswerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/rsp_answer_mailer/answer1
  def answer1
    RspAnswerMailer.answer1
  end

  # Preview this email at http://localhost:3000/rails/mailers/rsp_answer_mailer/answer2
  def answer2
    RspAnswerMailer.answer2
  end

end
