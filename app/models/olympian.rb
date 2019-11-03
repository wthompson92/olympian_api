class Olympian < ApplicationRecord
  belongs_to :sport
  has_many :medals
  has_many :events, through: :medals
end
