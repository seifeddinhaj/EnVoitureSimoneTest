require 'rails_helper'

RSpec.describe PotatoPricesController, type: :controller do

  before(:each) do
    @first_potato = create(:potato_price, time: "2022-08-22 09:00:00", value: 100.25)
    @second_potato = create(:potato_price, time: "2022-08-22 10:00:00", value: 100.29)
    @third_potato = create(:potato_price, time: "2022-08-23 10:00:00")
  end

  describe "GET #index" do
    it "returns a success response" do
      get :index, params: {date: '2022-08-22'}, as: :json
      expect(response).to be_successful
      expect(response.body).to have_json_node(:id).with(@first_potato.id)
      expect(response.body).to have_json_node(:id).with(@second_potato.id)
    end

    it "returns only third potato" do
      get :index, params: {date: '2022-08-23'}, as: :json
      expect(response).to be_successful
      expect(response.body).to_not have_json_node(:id).with(@first_potato.id)
      expect(response.body).to_not have_json_node(:id).with(@second_potato.id)
      expect(response.body).to have_json_node(:id).with(@third_potato.id)
    end
  end

  describe "GET #best_gain" do
    it "returns the best gain" do
      get :best_gain, params: {date: '2022-08-22'}, as: :json
      expect(response).to be_successful
      expect(JSON.parse(response.body)["gain"]).to eq("4.0 €")
    end
  end
end
