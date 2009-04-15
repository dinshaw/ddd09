class Project < ActiveRecord::Base
  acts_as_ordered_tree :foreign_key => :parent_id, :order       => :position
  has_attached_file :photo, :default_style => :default,
    :styles => {
      :thumb=> "100x100>",
      :default  => "x150>" 
    }
    
  default_scope :order => :position
  named_scope :featured, :conditions => { :featured => true }
end
