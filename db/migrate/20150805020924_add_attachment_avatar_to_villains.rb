class AddAttachmentAvatarToVillains < ActiveRecord::Migration
  def self.up
    change_table :villains do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :villains, :avatar
  end
end
