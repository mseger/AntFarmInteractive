class Comment < ActiveRecord::Base
  belongs_to :project
  attr_accessible :body, :commenter
end
