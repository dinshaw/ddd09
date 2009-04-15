# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include ExceptionNotifiable
  include AuthenticatedSystem
  include RoleRequirementSystem
  layout "main"

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password, :confirm_password

  before_filter :get_cms_page, :nav_items
  before_filter :process_nav_items

  def get_cms_page
    controller = self.controller_name.titleize
    # Admin user shoudl not need to differentiate between edit / update and new / create
    action = case self.action_name
    when "create"
      "New"
    when "update"
      "Edit"
    else
      self.action_name.titleize
    end
    @cms_page = CmsPage.get([controller,action].join(": "))
  end

  def nav_items
    @nav_items ||= [
      ['Home',root_path,'first'],
      ['Projects',projects_path,''],
      ['Bio & Resume',bio_path,''],
      ['Process',process_path,''],
      ['Enterprise',enterprise_path,''],
      ['pcgi.it',pcgi_path,'last']
    ].each{ |nav| nav[2] += ' current' if request.request_uri == nav[1] }
  end
  
  def process_nav_items
    paths = [@cms_page.path] + @cms_page.children.collect{|cms| cms.path }
    logger.error paths.inspect
    logger.error self.action_name
    if paths.include?(self.action_name)
    @process_nav_items ||= [
      ['Free Consultation',free_consultation_path,'first'],
      ['Discovery',discovery_path,''],
      ['Design',design_path,''],
      ['Development',development_path,''],
      ['QA',quality_assurance_path,'last']
    ].each{|nav| nav[2] += ' current' if request.request_uri == nav[1] }
  end
  end
end
