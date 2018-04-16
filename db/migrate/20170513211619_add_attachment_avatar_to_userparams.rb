class AddAttachmentAvatarToUserparams < ActiveRecord::Migration
  def self.up
    change_table :userparams do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :userparams, :avatar
  end
end
