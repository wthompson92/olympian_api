class Medal < ApplicationRecord
  belongs_to :event
  belongs_to :olympian
  validates_presence_of :name
end
