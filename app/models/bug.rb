class Bug < ActiveRecord::Base
  attr_accessible :description, :title, :bug_status_id, :status

  belongs_to :project
  belongs_to :status, class_name: "BugStatus", foreign_key: :bug_status_id

  validates :title, presence: true
  validates :description, presence: true
  validates :bug_status_id, inclusion: { in: BugStatus::ALL_STATUSES.keys }
end
