class OfficeWorker < ActiveRecord::Base
  validates :name, presence: true
  validates_date :dob, :before => lambda { 20.years.ago },
                       :before_message => "must be at least 20 years old"
  validates :years_of_exp, presence: true, numericality: { greater_than_or_equal_to: 0 }
end