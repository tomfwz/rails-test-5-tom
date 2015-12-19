class CreateSchoolsStudents < ActiveRecord::Migration
  def change
    create_table :schools_students do |t|
      t.references :school, index: true
      t.references :student, index: true
    end
  end
end
