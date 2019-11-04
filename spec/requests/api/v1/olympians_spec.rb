require 'rails_helper'
require 'rake'
describe 'Background API Endpoint' do

  before :each do
    get "/api/v1/olympians"
  end

  it "Returns Status Success" do
    expect(response).to have_http_status(200)
  end

  it "JSON body response contains expected  attributes" do
    json_response = JSON.parse(response.body)["data"].first
    expect(json_response['attributes'].keys).to match_array(["age", "id", "name", "sex", "team", "weight"])
  end
end
