require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) {FactoryGirl.create(:user)}
  #TODO add a test for a user updating his password or email

  it "Email must be valid" do
    user = User.new(email: "abc")
    user.save
    expect(user.errors.messages[:email]).to eq(["is invalid"])
  end

  it "Email cannot be blank" do
    user = User.new(password: "12345678", password_confirmation: "12345678")
    user.save
    expect(user.errors.messages[:email]).to eq(["can't be blank"])
  end

  it "A user can register using valid data" do
    expect(user.save).to eq(true)
  end

  it "A user must enter a password with a length minimum of 8" do
    user = User.new(email:"abcd@test.pl", password: "123", password_confirmation: "123")
    user.save
    expect(user.errors.messages[:password]).to eq(["is too short (minimum is 8 characters)"])
  end

  it "Password and password_confirmation must match" do
    user = User.new(email: "213213@abc.pl", password: "123456789", password_confirmation: "12345678")
    user.save
    expect(user.errors.messages[:password_confirmation]).to eq(["doesn't match Password"])
  end


end
