require 'rails_helper'

RSpec.describe RawDatum, type: :model do


  describe 'Validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :sex}
    it {should validate_presence_of :age}
    it {should validate_presence_of :height}
    it {should validate_presence_of :weight}
    it {should validate_presence_of :team}
    it {should validate_presence_of :games}
    it {should validate_presence_of :sport}
    it {should validate_presence_of :event}
    it {should validate_presence_of :medal}
  end


  it 'Can count the number of olypians' do
    list = RawDatum.list_of_olympians
    binding.pry

    expect(list.keys).to eq(2850)
  end

end
