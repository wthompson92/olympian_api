require 'rails_helper'

RSpec.describe Medal, type: :model do
  describe 'Validations' do
    it {should validate_presence_of :name}
    it {should belong_to :event}
    it {should belong_to :olympian}

  end
end
