class Api::V1::OlympiansController < ApplicationController
  before_action :show
  def index
    Olympian.medal_count
    render json: OlympianSerializer.new(Olympian.all)
  end

  def show
    if params[:age] == "oldest"
      render json: Olympian.oldest_olympian.to_json
    elsif params[:age] == "youngest"
      render json: Olympian.youngest_olympian
    end
  end
end
