class Student < ActiveRecord::Base
  has_many :school_mates
  has_many :schools, through: :school_mates

  validates :name,  presence: true
  validates_date :dob, :before => lambda { 18.years.ago },
                       :before_message => "must be at least 18 years old"
end