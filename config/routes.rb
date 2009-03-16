ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'cms_pages', :action => 'home'

  map.resources :config_values

  map.resources :cms_pages

  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users

  map.resource :session

  map.activate '/activate/:activation_code', :controller => 'users', :action => 'activate', :activation_code => nil

  map.resources :users, :member => { :suspend   => :put, :unsuspend => :put, :purge => :delete }


  map.namespace :admin do |admin|
    admin.resources :cms_pages, :config_values
  end

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action.:format'
  map.connect ':controller/:action/:id.:format'
end
