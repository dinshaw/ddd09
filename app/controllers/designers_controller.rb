class DesignersController < ApplicationController
  htpasswd :user=>"ddd", :pass=>"dddeigner3" if ENV['RAILS_ENV'] != 'development'
  
  caches_action :index
  
  def index
    @designers = Designer.all
  end

end
