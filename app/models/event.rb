class Event < ApplicationRecord
  belongs_to :sport
  has_many :medals
  has_many :olympians, through: :medals

  def self.event_medals(event_id)
    find(event_id).medals.reject do |medal|
    medal.name == "NA"
  end
  end

  def self.medalists(event_id)
    m = event_medals(event_id).map do |medal|
      Olympian.find(medal.olympian_id)

    end
binding.pry

  end

end
