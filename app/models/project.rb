class Project < ActiveRecord::Base
  attr_accessible :contact_name, :contact_email, :presentation_title, :all_students_presenting, :project_description, :special_needs, :topical_area
	has_many :comments
end
