class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :contact_name
      t.string :contact_email
      t.string :presentation_title
      t.text :all_students_presenting
      t.text :project_description
      t.text :special_needs
#      t.check_box_tag :topical_area
      t.string :class_affiliation

      t.timestamps
    end
  end
end
