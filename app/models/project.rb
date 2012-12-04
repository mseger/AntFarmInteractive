class Project < ActiveRecord::Base
  attr_accessible :contact_name, :contact_email, :presentation_title, :all_students_presenting, :project_description, :special_needs, :class_affiliation, :category_ids
  has_many :comments
  has_and_belongs_to_many :categories

 
  validates_presence_of :contact_name, :message => "cannot be blank" 
  validates_presence_of :contact_email, :message => "cannot be blank" 
  validates_presence_of :presentation_title, :message => "cannot be blank" 
 

end
