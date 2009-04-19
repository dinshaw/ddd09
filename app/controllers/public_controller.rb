class PublicController < ApplicationController
  def home
    @featured_project = Project.featured.first
  end
  
  def bio
    @employers = Employer.all
  end
  
end
