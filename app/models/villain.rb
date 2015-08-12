class Villain < ActiveRecord::Base

  has_attached_file :avatar, :styles => { :medium => "300x300>", :small => "150x150>", :thumb => "100x100>" }

  has_attached_file :avatar,
                 :styles => { :medium => "200x200>", :small => "100x100>", :thumb => "44x44#" },
                 :storage => :s3,
                 :s3_credentials => Proc.new { |a| a.instance.s3_credentials },
                 :path => "avatars/:id/:style/avatar.:extension",
                 :default_url => "https://s3.amazonaws.com/video-game-villains/defaults/default_avatar.png"

def s3_credentials
 { :bucket => ENV['S3_BUCKET'], :access_key_id => ENV['S3_PUBLIC_KEY'], :secret_access_key => ENV['S3_SECRET'] }
end

  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
