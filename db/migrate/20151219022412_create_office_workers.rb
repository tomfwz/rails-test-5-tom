class CreateOfficeWorkers < ActiveRecord::Migration
  def change
    create_table :office_workers do |t|
      t.string :name
      t.date :dob
      t.decimal :years_of_exp
    end
  end
end
