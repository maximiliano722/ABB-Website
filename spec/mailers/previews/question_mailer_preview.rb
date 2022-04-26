# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/question_mailer
class QuestionMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/question_mailer/new_question
  def new_question
    QuestionMailer.new_question
  end
end
