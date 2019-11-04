require 'rails_helper'
require 'rake'
describe 'Background API Endpoint' do

  before :each do
    get "/api/v1/events"
  end

  it "Returns Status Success" do
    expect(response).to have_http_status(200)
  end

  it "JSON body response contains expected  attributes" do
    json_response = JSON.parse(response.body)
    expect(json_response.keys).to include("Archery", "Athletics", "Badminton", "Basketball", "Beach Volleyball", "Boxing", "Canoeing", "Cycling", "Tennis", "Trampolining", "Triathlon", "Volleyball", "Water Polo", "Weightlifting", "Wrestling")
  end

end
