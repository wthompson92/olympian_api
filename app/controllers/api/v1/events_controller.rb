class Api::V1::EventsController < ApplicationController

  def index
    render json: Sport.events
  end

  def show
    render json:  Event.medalists(params[:id])
  end
end
