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

  before_filter :get_cms_page
  
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
end
