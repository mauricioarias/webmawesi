class CreateImage < ActiveRecord::Migration
 def self.up
 	add_attachment :projects, :imagen
 end
 def self.down
 	remove_attachment :projects, :imagen
 end
end
