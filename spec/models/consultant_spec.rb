require 'rails_helper'

RSpec.describe Consultant, type: :model do

    subject {
      described_class.new(first_name: "John",
                          last_name: "Lennon")
    }

  it "is valid with attributes" do
    expect(subject).to be_valid
  end

  it "is valid without a first name and last name" do
    subject.first_name = nil
    subject.last_name = nil
    expect(subject).to_not be_valid
  end
end
# it "can see all consultants" do
#   Consultant = index(:consultant, index: all)
# end
