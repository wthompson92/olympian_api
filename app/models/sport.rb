class Sport < ApplicationRecord
  has_many :olympians
  has_many :events
  validates_presence_of :name

  def self.events
    hash = Hash.new
    order(:name).includes(:events).map do |sport|
      events = sport.events.map do |event|
        event.name
      end
      hash[sport.name] = events
    end
    hash
  end
end
