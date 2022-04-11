require "rails_helper"

RSpec.describe QuestionMailer, type: :mailer do
  describe "new_question" do
    let(:mail) { QuestionMailer.new_question }

    it "renders the headers" do
      expect(mail.subject).to eq("New question")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
