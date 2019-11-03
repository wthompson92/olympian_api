class Api::V1::StatsController < ApplicationController

  def show

  render json: {
    olympian_stats:
    { total_competing_olympians: Olympian.number_of_olympians,
      average_weight:
        {unit: "kg",
          male_olympians: Olympian.avg_male_weight.round,
          female_olympians: Olympian.avg_female_weight.round},
      average_age: Olympian.average_age.round}
    }
  end
end
