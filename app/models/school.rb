class School < ActiveRecord::Base
  include Seeds::School
  extend Enumerize
  
  has_many :school_mates
  has_many :students, through: :school_mates

  enumerize :type, in: [:university, :high_school, :secondary_school, :primary_school], default: :university, predicates: true
end