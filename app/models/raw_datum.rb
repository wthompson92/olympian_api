class RawDatum < ApplicationRecord
  validates_presence_of :name, :sex, :age,:height, :weight, :games, :team, :sport, :medal, :event

  def self.list_of_olympians
     select('distinct on (name) *')
  end

  

end
