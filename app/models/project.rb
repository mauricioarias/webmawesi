class Project < ActiveRecord::Base
	has_attached_file :imagen, :styles => { :medium => "400x400>", :thumb => "100x100#" }, :default_url => "public/images/:style/missing.png"
	validates_attachment_content_type :imagen, :content_type => /\Aimage/
	validates_attachment_file_name :imagen, :matches => [/png\z/, /jpe?g\z/]
	 do_not_validate_attachment_file_type :imagen
end
