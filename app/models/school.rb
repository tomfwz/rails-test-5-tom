class School < ActiveRecord::Base
  extend Enumerize
  
  has_many :school_mates
  has_many :students, through: :school_mates

  enumerize :category, in: [:university, :high_school, :secondary_school, :primary_school], default: :university, predicates: true
end