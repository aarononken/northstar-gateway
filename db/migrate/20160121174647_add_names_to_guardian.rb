class AddNamesToGuardian < ActiveRecord::Migration
  def change
  	add_column :guardians, :guardian_first_name, :string
  	add_column :guardians, :guardian_last_name, :string
  end
end
