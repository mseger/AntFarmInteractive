class Project < ActiveRecord::Base
  attr_accessible :content, :image_url, :names, :title
	has_many :comments
end
