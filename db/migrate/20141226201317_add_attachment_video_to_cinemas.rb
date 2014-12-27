class AddAttachmentVideoToCinemas < ActiveRecord::Migration
  def self.up
    change_table :cinemas do |t|
      t.attachment :video
    end
  end

  def self.down
    remove_attachment :cinemas, :video
  end
end
