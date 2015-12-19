class School < ActiveRecord::Base
  extend Enumerize
  
  has_many :students
  
  enumerize :type, in: [:university, :high_school, :secondary_school, :primary_school], default: :university, predicates: true
end