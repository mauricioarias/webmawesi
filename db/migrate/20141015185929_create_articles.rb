class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :autor
      t.string :title
      t.string :descripcion
      t.string :text

      t.timestamps
    end
  end 
end
