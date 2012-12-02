class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :contact_name
      t.string :contact_email
      t.string :presentation_title
      t.text :all_students_presenting
      t.text :project_description
      t.text :special_needs
      t.check_box :topical_area

      t.timestamps
    end
  end
end
