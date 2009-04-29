class DesignersController < ApplicationController
  htpasswd :user=>"ddd", :pass=>"dddesigner3" if ENV['RAILS_ENV'] != 'development'
  
  caches_action :index
  
  def index
    @designers = Designer.all
  end

end
