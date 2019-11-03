class Api::V1::EventsController < ApplicationController

  def index
    render json: Sport.events
  end
end
