require 'rails_helper'

describe OfficeWorker do
  context 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_numericality_of(:years_of_exp) }
    it { is_expected.to_not allow_value(-1).for(:years_of_exp) }
    it { is_expected.to allow_value(0).for(:years_of_exp) }
  end
end