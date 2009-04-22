class Employer < ActiveRecord::Base
  validates_presence_of :company_name
  default_scope :order => 'until_date desc'
  
  def until
    until_date > Date.today ? "Current" : until_date.to_s(:employer)
  end
end
