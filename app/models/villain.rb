class Villain < ActiveRecord::Base

  has_attached_file :avatar, :styles => { :medium => "300x300>", :small => "150x150>", :thumb => "100x100>" }

  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
