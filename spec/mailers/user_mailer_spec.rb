require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "new_member" do
    let(:mail) { UserMailer.new_member }

    it "renders the headers" do
      expect(mail.subject).to eq("New member")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "welcome_email" do
    let(:mail) { UserMailer.welcome_email }

    it "renders the headers" do
      expect(mail.subject).to eq("Welcome email")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "failed_charge" do
    let(:mail) { UserMailer.failed_charge }

    it "renders the headers" do
      expect(mail.subject).to eq("Failed charge")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "_updated_info" do
    let(:mail) { UserMailer._updated_info }

    it "renders the headers" do
      expect(mail.subject).to eq("Updated info")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "user_deleted" do
    let(:mail) { UserMailer.user_deleted }

    it "renders the headers" do
      expect(mail.subject).to eq("User deleted")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "dispute" do
    let(:mail) { UserMailer.dispute }

    it "renders the headers" do
      expect(mail.subject).to eq("Dispute")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "dispute_updated" do
    let(:mail) { UserMailer.dispute_updated }

    it "renders the headers" do
      expect(mail.subject).to eq("Dispute updated")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "funds_reinstated" do
    let(:mail) { UserMailer.funds_reinstated }

    it "renders the headers" do
      expect(mail.subject).to eq("Funds reinstated")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "funds_withdrawn" do
    let(:mail) { UserMailer.funds_withdrawn }

    it "renders the headers" do
      expect(mail.subject).to eq("Funds withdrawn")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "dispute_closed" do
    let(:mail) { UserMailer.dispute_closed }

    it "renders the headers" do
      expect(mail.subject).to eq("Dispute closed")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
