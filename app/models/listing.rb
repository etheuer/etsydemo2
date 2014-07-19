class Listing < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "https://www.dropbox.com/s/vxo86coujq0k88n/missing.jpg",
#	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
end