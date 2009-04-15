class CmsPage < ActiveRecord::Base

  def self.get(reference_string)
    find_by_reference_string(reference_string) || self.new(:title => reference_string, :sub_title => "CMS Page Missing  - #{reference_string}")
  end
  
end
