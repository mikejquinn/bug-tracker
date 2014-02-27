class Project < ActiveRecord::Base
  attr_accessible :title, :description
  has_many :bugs

  validates :title, presence: true
  validates :description, presence: true
end
