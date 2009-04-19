class Employer < ActiveRecord::Base
  validates_presence_of :company_name
  default_scope :order => 'from_date desc'
end
