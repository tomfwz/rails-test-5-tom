class RenameSchoolsStudentsName < ActiveRecord::Migration
  def change
    rename_table :schools_students, :school_mates
  end
end
