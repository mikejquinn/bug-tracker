class Bug < ActiveRecord::Base
  attr_accessible :description, :title
  belongs_to :project
  belongs_to :status, class_name: "BugStatus"
end
