ActionController::Routing::Routes.draw do |map|
  # map.resources :projects, :path_prefix => 'admin', :name_prefix => 'admin_', :controller => 'admin/projects'
  # map.resources :cms_pages, :path_prefix => 'admin', :name_prefix => 'admin_', :controller => 'admin/cms_pages'
  # map.resources :config_values, :path_prefix => 'admin', :name_prefix => 'admin_', :controller => 'admin/config_values'

  map.resources :projects

  map.root :controller => 'cms_pages', :action => 'home'
  map.home "home", :controller => 'cms_pages', :action => 'home'  
  map.bio "bio", :controller => 'cms_pages', :action => 'bio'
  map.process "process", :controller => 'cms_pages', :action => 'my_process'
  map.enterprise "enterprise", :controller => 'cms_pages', :action => 'enterprise'    
  map.pcgi "pcgi", :controller => 'cms_pages', :action => 'pcgi'
  map.development "development", :controller => 'cms_pages', :action => 'development'
  map.free_consultation "free_consultation", :controller => 'cms_pages', :action => 'free_consultation'
  map.discovery "discovery", :controller => 'cms_pages', :action => 'discovery'
  map.quality_assurance "quality_assurance", :controller => 'cms_pages', :action => 'quality_assurance'
  map.design "design", :controller => 'cms_pages', :action => 'design'            

  
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
  end
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action.:format'
  map.connect ':controller/:action/:id.:format'
end
