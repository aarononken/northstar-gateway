class AddAvatarsToGuardians < ActiveRecord::Migration
  def self.up
    change_table :guardians do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :guardians, :avatar
  end
end
