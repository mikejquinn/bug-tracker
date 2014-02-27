class Project < ActiveRecord::Base
  attr_accessible :title, :description
  has_many :bugs
end
