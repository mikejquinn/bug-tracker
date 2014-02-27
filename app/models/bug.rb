class Bug < ActiveRecord::Base
  attr_accessible :description, :title, :bug_status_id, :status

  belongs_to :project
  belongs_to :status, class_name: "BugStatus"

  after_initialize :set_default_status

  protected

  def set_default_status
    self.status = BugStatus.find(BugStatus::NEW)
  end
end
