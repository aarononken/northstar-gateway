class AddFamilyToGuardian < ActiveRecord::Migration
  def change
  	add_column :guardians, :family_id, :integer
  end
end
