class Api::V1::StatsController < ApplicationController

  def show
    number_of_olympians = RawDatum.number_of_olympians
    avg_age = RawDatum.average_age.round
    avg_female_weight = RawDatum.avg_female_weight.round
    avg_male_weight = RawDatum.avg_male_weight.round

    render json: {
      olympian_stats:
      { total_competing_olympians: number_of_olympians,     average_weight:
        {unit: "kg",
          male_olympians: avg_male_weight,
          female_olympians: avg_female_weight},
          average_age: avg_age}}
  end
end
