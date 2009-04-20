class ProjectsController < ApplicationController
  caches_page :index
  def index
    @projects = Project.all
  end
end
