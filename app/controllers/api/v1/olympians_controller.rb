class Api::V1::OlympiansController < ApplicationController

  def index
    render json: RawDatum.list_of_olympians.to_json
  end

  def show
    if params[:age] == "oldest"
      render json: RawDatum.oldest_olympians.to_json
    elsif params[:age] == "youngest"
      render json: RawDatum.youngest_olympian.to_json
    end
  end
end
