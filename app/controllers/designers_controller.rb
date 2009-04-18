class DesignersController < ApplicationController
  htpasswd :user=>"ddd", :pass=>"09de$igner3" if ENV['RAILS_ENV'] != 'development'
  
  def index
    @designers = Designer.all
  end

end
