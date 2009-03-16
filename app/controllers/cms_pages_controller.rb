class CmsPagesController < ApplicationController
  def home
    @cms_page = Admin::CmsPage.get_by_ref_string("Home")
  end

end
