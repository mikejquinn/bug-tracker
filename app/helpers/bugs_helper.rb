module BugsHelper
  def bug_status_select_options
    BugStatus.all.map { |status| [status.description, status.id] }
  end
end
