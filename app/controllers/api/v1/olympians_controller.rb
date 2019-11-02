class Api::V1::OlympiansController < ApplicationController

  def index
    render json: RawDatum.list_of_olympians.to_json
  end
end
