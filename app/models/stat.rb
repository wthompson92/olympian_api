class Stat
  include ActiveModel::Serialization

  attr_reader :avg_age, :avg_male_weight, :avg_female_weight, :number_of_olympians

  def initialize(avg_age, avg_male_weight, avg_female_weight, number_of_olympians)
    @avg_age = avg_age
    @avg_male_weight = avg_male_weight
    @avg_female_weight = avg_female_weight
    @number_of_olympians = number_of_olympians
end
