class SchoolMate < ActiveRecord::Base
  belongs_to :school 
  belongs_to :student
end