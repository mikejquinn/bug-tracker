class Bug < ActiveRecord::Base
  attr_accessible :description, :title, :bug_status_id, :status

  belongs_to :project
  belongs_to :status, class_name: "BugStatus"

  after_initialize :set_default_status

  validates :title, presence: true
  validates :description, presence: true
  validates :bug_status_id, inclusion: { in: BugStatus::ALL_STATUSES.keys }

  protected

  def set_default_status
    self.status = BugStatus.find(BugStatus::NEW)
  end
end
