class RsvpController < ApplicationController
  def question_1
  end

  def question_2
  end

  def answer_1
    RspAnswerMailer.with(form: params[:form]).answer_1.deliver_now
    redirect_to root_path
    end

  def answer_2
  end
end
