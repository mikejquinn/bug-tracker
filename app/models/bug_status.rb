class BugStatus < ActiveRecord::Base
  attr_accessible :description

  NEW = 1
  IN_PROGRESS = 2
  RESOLVED = 3
  CLOSED = 4
  REJECTED = 5

  ALL_STATUSES = {
    NEW => "New",
    IN_PROGRESS => "In progress",
    RESOLVED => "Resolved",
    CLOSED => "Closed",
    REJECTED => "Rejected"
  }
end
