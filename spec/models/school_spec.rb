require 'rails_helper'

describe School do
  context 'associations' do 
    it { is_expected.to have_many :students }
  end

  context 'validations' do
    it { is_expected.to enumerize(:type).in(:university, :high_school, :secondary_school, :primary_school) }
  end
end