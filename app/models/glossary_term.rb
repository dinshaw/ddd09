class GlossaryTerm < ActiveRecord::Base
  acts_as_list :scope => 'common'
  has_friendly_id :term, :use_slug => true
  
  validates_presence_of :term
  validates_presence_of :definition
  validates_uniqueness_of :term
  
  default_scope :order => 'common desc, position'
  named_scope :common, :conditions => { :common => true }
  named_scope :uncommon, :conditions => { :common => false }
end
