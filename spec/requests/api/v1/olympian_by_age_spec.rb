require 'rails_helper'
require 'rake'
describe 'Background API Endpoint' do

  before :each do
    get "/api/v1/olympians?age=oldest"
  end

  it "Returns Status Success" do
    expect(response).to have_http_status(200)
  end

  it "JSON body response contains expected  attributes" do
    json_response = JSON.parse(response.body)
    expect(json_response.keys).to match_array(["age", "created_at", "id", "medal_count", "name", "sex", "sport_id", "team", "updated_at", "weight"])
  end

  before :each do
    get "/api/v1/olympians?age=youngest"

  end
  it "Returns Status Success" do
    expect(response).to have_http_status(200)
  end

  it "JSON body response contains expected  attributes" do
    json_response = JSON.parse(response.body)
    expect(json_response.keys).to match_array(["age", "created_at", "id", "medal_count", "name", "sex", "sport_id", "team", "updated_at", "weight"])
  end
end
