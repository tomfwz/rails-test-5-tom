module Seeds::School
  extend ActiveSupport::Concern

  included do
    def self.seed
      puts 'School'
      School.create({ name: 'University of Science', address: '227 Nguyen Van Cu', type: 'University' })
      School.create({ name: 'Le Hong Phong', address: '225 Nguyen Van Cu', type: 'University' })
      puts 'School'
    end
  end
end