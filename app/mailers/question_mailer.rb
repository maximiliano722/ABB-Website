class QuestionMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.question_mailer.new_question.subject
  #
  def new_question
    @last_name = "Zavala"
    @first_name = "Max"
    @email = "m.zavala22@tamu.edu"
    @number = "123-456-7890"
    @message = "Howdy!"

    mail to: "m.zavala22@tamu.edu"
  end
end
