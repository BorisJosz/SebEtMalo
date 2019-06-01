class RspAnswerMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.rsp_answer_mailer.answer1.subject
  #
  def answer_1
    @form = params[:form]

    mail to: "maloetseb19@gmail.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.rsp_answer_mailer.answer2.subject
  #
  def answer_2
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
