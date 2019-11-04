require 'rails_helper'

RSpec.describe Olympian, type: :model do
  describe 'Validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :sex}
    it {should validate_presence_of :age}
    it {should validate_presence_of :weight}
    it {should validate_presence_of :team}
    it {should belong_to :sport}
    it {should have_many :events}

  end
end
