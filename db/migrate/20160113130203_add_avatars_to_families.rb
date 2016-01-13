class AddAvatarsToFamilies < ActiveRecord::Migration
  def self.up
    change_table :families do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :families, :avatar
  end
end
