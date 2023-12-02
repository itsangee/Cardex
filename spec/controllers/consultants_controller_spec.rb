require 'rails_helper'

RSpec.describe ConsultantsController, type: :controller do
  describe 'GET index' do
    it "all @consultants" do
      consultants = FactoryBot.create(:consultant)
      get :index
      # expect(:consultants).should eq([consultants])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  # it'Show one @consultant' do
  #   consultant = Consultant.create(first_name: "John", last_name: "Lennon")
  #     get :show, params: { id: id }
  #     expect(response).to render_template("show")
  #   end
end
