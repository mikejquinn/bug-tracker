class BugsController < ApplicationController
  before_filter :load_project

  def show
    @bug = @project.bugs.find(params[:id])
  end

  def new
    @bug = @project.bugs.build
    @bug.status = BugStatus.find(BugStatus::NEW)
  end

  def edit
    @bug = @project.bugs.find(params[:id])
  end

  def create
    @bug = @project.bugs.build(params[:bug])

    if @bug.save
      redirect_to project_bug_path(@project, @bug) , notice: 'Bug was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @bug = @project.bugs.find(params[:id])

    if @bug.update_attributes(params[:bug])
      redirect_to project_bug_path(@project, @bug), notice: 'Bug was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @bug = @project.bugs.find(params[:id])
    @bug.destroy
    redirect_to project_path(@project)
  end

  protected

  def load_project
    @project = Project.find(params[:project_id])
  end
end
