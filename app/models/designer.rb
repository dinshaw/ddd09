class Designer < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :url
  has_attached_file :photo, :default_style => :default,
  :styles => {
    :thumb=> "100x100>",
    :default  => "x150>" 
  }

  has_attached_file :resume
  
  default_scope :order => :name
end
