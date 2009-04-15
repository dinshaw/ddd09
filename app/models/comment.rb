class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true
  validates_presence_of :name
  validates_presence_of :body
  
  named_scope :default => { :order => :created_at }
  
end
