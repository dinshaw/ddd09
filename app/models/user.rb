require 'digest/sha1'

class User < ActiveRecord::Base
  include Authentication
  include Authentication::ByPassword
  include Authentication::ByCookieToken
  include Authorization::AasmRoles

  has_and_belongs_to_many :roles
  
  # has_role? simply needs to return true or false whether a user has a role or not.  
  # It may be a good idea to have "admin" roles return true always
  def has_role?(role_in_question)
    @_list ||= self.roles.collect(&:name)
    return true if @_list.include?("admin")
    (@_list.include?(role_in_question.to_s) )
  end
  # ---------------------------------------
  
  validates_presence_of     :email
  validates_length_of       :email,    :within => 6..100 #r@a.wk
  validates_uniqueness_of   :email
  validates_format_of       :email,    :with => Authentication.email_regex, :message => Authentication.bad_email_message

  # HACK HACK HACK -- how to do attr_accessible from here?
  # prevents a user from submitting a crafted form that bypasses activation
  # anything else you want your user to change should be added here.
  attr_accessible :login, :email, :name, :password, :password_confirmation

  def login
    email
  end
  
  def self.authenticate(email, password)
    return nil if email.blank? || password.blank?
    u = find_in_state :first, :active, :conditions => {:email => email.downcase} # need to get the salt
    u && u.authenticated?(password) ? u : nil
  end

  def email=(value)
    write_attribute :email, (value ? value.downcase : nil)
  end

  protected
    def make_activation_code
        self.deleted_at = nil
        self.activation_code = self.class.make_token
    end
end