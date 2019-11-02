class StatSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  def initialize(number_of_olympians, avg_age, avg_female_weight, avg_male_weight)
    @number_of_olympians = number_of_olympians
    @avg_age = avg_age
    @avg_female_weight = avg_female_weight
    @avg_male_weight = avg_male_weight
  end

  attributes :number_of_olympians, :avg_age, :avg_female_weight, :avg_male_weight

end
