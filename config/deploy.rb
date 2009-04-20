set :domain, "dinshawdesign.com"                # The URL for your app
set :user, "dinshaw"                  # Your HostingRails username

if ENV['production']
  set :application, "dinshawdesign.com"
  # set :mongrel_servers, 3
  # set :mongrel_port, 8020
  set :rails_env, 'production'
else
  set :application, "stage.dinshawdesign.com"
  # set :mongrel_servers, 1
  # set :mongrel_port, 8030
  set :rails_env, 'staging'
end

default_run_options[:pty] = true
set :repository, "git@github.com:dinshaw/ddd09.git"  # The repository location for git
set :scm, :git
set :branch, "master"
set :git_enable_submodules, 1 

set :use_sudo, false                	# HostingRails users don't have sudo access
set :deploy_to, "/home/#{user}/#{application}"          # Where on the server your app will be deployed
set :deploy_via, :checkout                # For this tutorial, svn checkout will be the deployment method

set :chmod755, "app config db lib public vendor script script/* public/disp*"  	# Some files that will need proper permissions

role :app, domain
role :web, domain
role :db,  domain, :primary => true
