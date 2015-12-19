require 'rails_helper'

describe Student do
  context 'associations' do 
    it { is_expected.to have_many :schools }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of :name }
  end

  describe '#age' do
    let!(:student) { create(:student, dob: '12 Feb 1993') }
    it 'returns age of student' do
      expect(student.age).to eq 22
    end
  end
end