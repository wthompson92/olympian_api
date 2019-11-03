class Api::V1::EventsController < ApplicationController

  def index
    render json: RawDatum.events

  end
end
