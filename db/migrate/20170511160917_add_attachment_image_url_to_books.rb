class AddAttachmentImageUrlToBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.attachment :image_url
    end
  end

  def self.down
    remove_attachment :books, :image_url
  end
end
