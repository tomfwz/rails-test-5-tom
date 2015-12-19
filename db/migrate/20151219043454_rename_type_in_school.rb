class RenameTypeInSchool < ActiveRecord::Migration
  def change
    rename_column :schools, :type, :category
  end
end
