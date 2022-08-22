# frozen_string_literal: true

class QuestionMailer < ApplicationMailer
  def new_question(last_name, first_name, email, number, message)
    @last_name = last_name
    @first_name = first_name
    @email = email
    @number = number
    @message = message

    mail to: 'aggiebusinessbrothers@gmail.com', subject: 'New Question Submitted to ABB Website!'
  end
end
