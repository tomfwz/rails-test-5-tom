class SchoolMate < ActiveRecord::Base
  belongs_to :school 
  belongs_to :student

  def self.students
    all.joins(school: :students).pluck("students.name")
  end
end