class PublicController < ApplicationController
  caches_page :home, :projects, :bio, :my_process, :enterprise, :contact, :free_consultation, :discovery, :design, :quality_assurance, :development
  
  def home
    @featured_project = Project.featured.first
  end
  
  def bio
    @no_term_links = true
    @employers = Employer.all
  end
  
end
