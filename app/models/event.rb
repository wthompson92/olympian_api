class Event < ApplicationRecord
  belongs_to :sport
  has_many :medals
  has_many :olympians, through: :medals


end
