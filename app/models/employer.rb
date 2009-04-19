class Employer < ActiveRecord::Base
  validates_presence_of :company_name
  default_scope :order => 'until_date desc'
end
