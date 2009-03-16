class Admin::CmsPage < ActiveRecord::Base
  acts_as_ordered_tree :foreign_key => :parent_id, :order => :position
  validates_presence_of :reference_string
  validates_presence_of :title
  validates_presence_of :body
  
  def self.get_by_ref_string(ref_string)
    find_by_reference_string(ref_string) || new(:title => "CMS Page Missing: #{ref_string}")
  end
end
