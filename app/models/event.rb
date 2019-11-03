class Event < ApplicationRecord
  belongs_to :sport
  has_many :medals
  has_many :olympians, through: :medals

  def self.medalists(event_id)
    event = find(event_id)
    medals = event.medals.reject do |medal|
      medal.name == "NA"
    end
    medalists = medals.map do |medal|
      {medal.name => medal.olympian}
    end
      {event.name => medalists}
  end
end
