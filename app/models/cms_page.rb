class CmsPage < ActiveRecord::Base
  acts_as_ordered_tree :foreign_key => :parent_id, :order => :position  
  has_friendly_id :path
  
  validates_presence_of :title
  validates_presence_of :path
  validates_uniqueness_of :path
  
  def self.get(reference_string)
    find_by_reference_string(reference_string) || self.new(:title => reference_string, :sub_title => "CMS Page Missing  - #{reference_string}")
  end
  
end
