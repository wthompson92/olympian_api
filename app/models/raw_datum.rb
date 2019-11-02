class RawDatum < ApplicationRecord
  validates_presence_of :name, :sex, :age,:height, :weight, :games, :team, :sport, :medal, :event

  def self.list_of_olympians
     select('distinct on (name) *')
  end

  def self.oldest_olympians
    order("age DESC").first
  end

  def self.youngest_olympian
     # select('distinct on (name) *')
     order("age DESC").last
  end

  def number_of_olympians
    list_of_olympians.count
  end

  def self.female_average_weight
    select('distinct on (name) *')
    .where(sex: "F")
    .average(:weight)
  end


  def self.male_average_weight
    select('distinct on (name) *')
    .where(sex: "M")
    .average(:weight)
  end

  def self.average_age
    select('distinct on (name) *')
    .average(:age)
  end


  # select('distinct on (name) *')

  # def olympic_medals
  #   gold = RawDatum.where(medal: "Gold")
  #   silver = RawDatum.where(medal: "Silver")
  #   bronze = RawDatum.where(medal: "Bronze")
  #
  # end

end
