require 'password_checker'

RSpec.describe PasswordChecker do
  context "When password is less than 8 characters" do
    it "fails" do 
      password_1 = PasswordChecker.new
      expect { password_1.check("kjsadf") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
  
  it "returns true if password is greater than or equal to 8" do 
    password_1 = PasswordChecker.new
    result = password_1.check("sdlkjfsaldfs")
    expect(result).to eq true
  end
  
end