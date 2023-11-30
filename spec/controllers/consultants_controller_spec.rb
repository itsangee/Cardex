require 'rails_helper'

RSpec.describe ConsultantsController, type: :controller do
  describe 'GET index' do
    it "all @consultants" do
      consultants = Consultant.create(first_name: "John", last_name: "Lennon")
      get :index
      expect(assigns(:consultants)).to eq([consultants])
    end
  end





  # it "GET all consultants /index" do
  #   consultant = Consultant.create(first_name: "John", last_name: "Lennon")
  #   get consultants_path
  #   expect(response).to be_successful
  # end

  # # it "See one consultant /show" do
  # #   consultant =
  # # end
end
