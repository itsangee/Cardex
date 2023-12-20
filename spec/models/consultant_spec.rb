require 'rails_helper'

RSpec.describe Consultant, type: :model do

  it "is valid with attributes" do
    consultant = build(:consultant)
    expect(consultant).to be_valid
  end

  it "is not valid without a first name and last name" do
    consultant = build(:consultant)
    consultant.first_name = nil
    consultant.last_name = nil
    expect(consultant).to_not be_valid
  end
end
