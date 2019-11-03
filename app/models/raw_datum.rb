class RawDatum < ApplicationRecord
  validates_presence_of :name, :sex, :age,:height, :weight, :games, :team, :sport, :medal, :event

  def self.list_of_olympians
     select('distinct on (name) *')
  end

  def self.oldest_olympians
    order("age DESC").first
  end

  def self.youngest_olympian
     order("age DESC").last
  end

  def self.number_of_olympians
   select(:name).distinct.count
  end

  def self.avg_female_weight
    select('distinct on (name) *')
    .where(sex: "F")
    .average(:weight)
  end


  def self.avg_male_weight
    select('distinct on (name) *')
    .where(sex: "M")
    .average(:weight)
  end

  def self.average_age
    select('distinct on (name) *').average(:age)
  end

  def self.events
    a = select(:event).group("sport")
    # .select(:event).distinct

  end


  # select('distinct on (name) *')

  # def olympic_medals
  #   gold = RawDatum.where(medal: "Gold")
  #   silver = RawDatum.where(medal: "Silver")
  #   bronze = RawDatum.where(medal: "Bronze")
  #
  # end

end
