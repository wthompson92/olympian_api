class Medal < ApplicationRecord
  belongs_to :event
  belongs_to :olympian
end