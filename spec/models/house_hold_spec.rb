require 'rails_helper'

RSpec.describe HouseHold, type: :model do


  it "House Hold name cannot be blank" do
    house_hold = HouseHold.new
    expect(house_hold.save).to eq(false)
    expect(house_hold.errors.messages[:name]).to eq(["can't be blank"])
  end


end
