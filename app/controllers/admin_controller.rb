class AdminController < ApplicationController
  before_filter :login_required
  layout 'admin'

  def index
  end

  def nav_items
    @nav_items ||= [
      ['CMS Pages',admin_cms_pages_path,'first'], 
      ['Projects',admin_projects_path,'last']
    ]
  end
end
