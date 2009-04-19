ActionController::Routing::Routes.draw do |map|
  map.resources :employers, :path_prefix => 'admin', :name_prefix => 'admin_', :controller => 'admin/employers'

  map.resources :designers, :only => [:index]
  map.resources :projects, :only => [:show, :index]
  map.glossary_terms '/what-does-it-take-to-build-a-web-site', :controller => "glossary_terms"
    
  map.root :controller => 'public', :action => 'home'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users

  map.resource :session

  map.activate '/activate/:activation_code', :controller => 'users', :action => 'activate', :activation_code => nil

  map.resources :users, :member => { :suspend   => :put, :unsuspend => :put, :purge => :delete }

  map.namespace :admin do |admin|
    admin.resources :cms_pages, :config_values, :projects
    admin.resources :glossary_terms, :member => { :up => :get, :down => :get }
    admin.resources :designers, :member => { :up => :get, :down => :get }    
  end
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action.:format'
  map.connect ':controller/:action/:id.:format'
  # catch for cms pages
  map.connect '/:action', :controller => "public"
end
