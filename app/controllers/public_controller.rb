class PublicController < ApplicationController

  def home
    @featured_project = Project.featured.first
  end
  


end
