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

  describe '#schoolmates' do
    let!(:us)     { create(:school, category: :university) }
    let!(:lhp)    { create(:school, category: :high_school) }
  
    let!(:tom)    { create(:student, name: 'Tom Fwz', dob: '12 Feb 1993') }
    let!(:james)  { create(:student, name: 'James Fwz', dob: '12 Feb 1993') }
    let!(:robin)  { create(:student, name: 'Robin Fwz', dob: '12 Feb 1993') }

    let!(:schoolmates) {
      SchoolMate.create(school: us, student: tom)
      SchoolMate.create(school: us, student: james)
      SchoolMate.create(school: us, student: robin)
    }

    it 'returns age of student' do
      expected = [robin.name, james.name, tom.name]
      expect(tom.schoolmates).to eq expected
    end
  end
end