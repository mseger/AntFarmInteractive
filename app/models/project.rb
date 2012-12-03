class Project < ActiveRecord::Base
  attr_accessible :contact_name, :contact_email, :presentation_title, :all_students_presenting, :project_description, :special_needs, :class_affiliation, :category_ids
  has_many :comments
  has_and_belongs_to_many :categories
end
