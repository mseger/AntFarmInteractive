class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :names
      t.string :image_url
      t.text :content

      t.timestamps
    end
  end
end
