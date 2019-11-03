class Sport < ApplicationRecord
  has_many :olympians
  has_many :events

def self.events
  hash = Hash.new
  includes(:events).map do |sport|
    events = sport.events.map do |event|
      event.name
    end
    hash[sport.name] = events
  end
  hash
end
end
