class Api::V1::StatsController < ApplicationController

  def show
    number_of_olympians = RawDatum.number_of_olympians
    avg_age = RawDatum.average_age.round
    avg_female_weight = RawDatum.avg_female_weight.round
    avg_male_weight = RawDatum.avg_male_weight.round
  render json: StatSerializer.new(number_of_olympians, avg_age,  avg_female_weight, avg_male_weight)
  binding.pry
  end
end
