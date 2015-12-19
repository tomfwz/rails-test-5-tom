module Seeds::Student
  extend ActiveSupport::Concern

  included do
    def self.seed
      puts 'Student'
      Student.create({ name: 'Tom Fwz', dob: '12 Feb 1993' })
      Student.create({ name: 'James Fwz', dob: '31 Dec 1990' })
      puts 'Student'
    end
  end
end