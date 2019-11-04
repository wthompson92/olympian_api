require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'Validations' do
    it {should validate_presence_of :name}
    it {should belong_to :sport}
    it {should have_many :medals}
    it {should have_many :olympians}
  end
end
