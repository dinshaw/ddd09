class Post < ActiveRecord::Base
  acts_as_ordered_tree :foreign_key => :parent_id,
                       :order       => :position
  validates_presence_of :reference_string
  validates_presence_of :title
  validates_presence_of :body
  
  has_many :comments, :as => :commentable
  
end
