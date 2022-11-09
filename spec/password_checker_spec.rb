require 'password_checker'

RSpec.describe PasswordChecker do
  context "When password is equal/more 8 chr. long" do
    it "returns true" do
      password = PasswordChecker.new
      result = password.check("12345678")
      expect(result).to eq true
    end
  end
    context "When a string of less chr is passed" do
      it "fails" do
      password = PasswordChecker.new
      expect { password.check("1234") }.to raise_error "Invalid password, must be 8+ characters."
      end
    end
  end
