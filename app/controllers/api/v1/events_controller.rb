class Api::V1::EventsController < ApplicationController

  def index
    render json: Sport.events
  end

  def show
    a =  Event.medalists(params[:id])


    binding.pry
  end
end
