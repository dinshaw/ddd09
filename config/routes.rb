ActionController::Routing::Routes.draw do |map|
  map.resources :projects, :only => [:show, :index]
  map.resources :glossary_terms, :only => [:show, :index] 
  
  map.root :controller => 'public', :action => 'home'
  map.home "home", :controller => 'public', :action => 'home'  
  map.bio "bio", :controller => 'public', :action => 'bio'
  map.process "process", :controller => 'public', :action => 'my_process'
  map.enterprise "enterprise", :controller => 'public', :action => 'enterprise'    
  map.pcgi "pcgi", :controller => 'public', :action => 'pcgi'
  map.development "development", :controller => 'public', :action => 'development'
  map.free_consultation "free_consultation", :controller => 'public', :action => 'free_consultation'
  map.discovery "discovery", :controller => 'public', :action => 'discovery'
  map.quality_assurance "quality_assurance", :controller => 'public', :action => 'quality_assurance'
  map.design "design", :controller => 'public', :action => 'design'            
  
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
  end
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action.:format'
  map.connect ':controller/:action/:id.:format'
end
