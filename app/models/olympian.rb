class Olympian < ApplicationRecord
  belongs_to :sport
  has_many :medals
  has_many :events, through: :medals

  def self.oldest_olympian
    order(:age).last
  end

  def self.youngest_olympian
    order(:age).first
  end

  def self.number_of_olympians
    select(:name).distinct.count
  end

  def self.avg_female_weight
    where(sex: "F").average(:weight)
  end

  def self.avg_male_weight
    where(sex: "M").average(:weight)
  end

  def self.average_age
    average(:age)
  end

  def self.olympic_medals
    joins(:medals).where("medals.name != 'NA'").group(:id).count
  end

  def self.medal_count
    olympic_medals.each do |k,v|
      self.find(k).update_column(:medal_count, v)
    end
  end
end
