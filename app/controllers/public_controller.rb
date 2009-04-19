class PublicController < ApplicationController
  def home
    @featured_project = Project.featured.first
  end
  
  def bio
    @no_term_links = true
    @employers = Employer.all
  end
  
end
