class Event < ApplicationRecord
  belongs_to :sport
  has_many :medals
  has_many :olympians, through: :medals

  def self.medalists(event_id)
    event = find(event_id)
    medals = event.medals.reject { |medal| medal.name == "NA"}
    medalists = medals.map {|medal|{medal.name => medal.olympian}}
    {event.name => medalists}
  end
end
