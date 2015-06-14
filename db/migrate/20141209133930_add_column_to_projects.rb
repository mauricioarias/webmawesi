class AddColumnToProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :tipo, :string
  end
end
