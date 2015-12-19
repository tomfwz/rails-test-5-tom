require 'rails_helper'

describe Student do
  context 'associations' do 
    it { is_expected.to have_many :schools }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of :name }
  end
end