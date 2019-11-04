require 'rails_helper'
require 'rake'
describe 'Background API Endpoint' do

  before :each do
    get "/api/v1/olympian_stats"
  end

  it "Returns Status Success" do
    expect(response).to have_http_status(200)
  end

  it "JSON body response contains expected  attributes" do
    json_response = JSON.parse(response.body)["olympian_stats"]
    expect(json_response.keys).to match_array(["average_age", "average_weight", "total_competing_olympians"])
  end
end
