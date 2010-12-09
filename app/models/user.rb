class User < ActiveRecord::Base
  has_one :card
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :comments
  has_one :avatar
  has_many :annotations
  has_many :comments
  has_many :images
  accepts_nested_attributes_for :card
  accepts_nested_attributes_for :avatar
  has_many :approved_images, :class_name => "Image", :foreign_key => "approver_id"
  include Gravtastic
  
  ## Niftily-generated authentication code below.
  # new columns need to be added here to be writable through mass assignment
  attr_accessible  :username, :email, :password, :password_confirmation, :forgot_token

  attr_accessor :password
  before_save :prepare_password

  validates_presence_of :username
  validates_uniqueness_of :username, :email, :allow_blank => true
  validates_format_of :username, :with => /^[-\w\._@]+$/i, :allow_blank => true, :message => "should only contain letters, numbers, or .-_@"
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
  validates_presence_of :password, :on => :create
  validates_confirmation_of :password
  validates_length_of :password, :minimum => 4, :allow_blank => true

  # login can be either username or email address
  def self.authenticate(login, pass)
    user = find_by_username(login) || find_by_email(login)
    return user if user && user.matching_password?(pass)
  end

  def matching_password?(pass)
    self.password_hash == encrypt_password(pass)
  end

  protected

  def prepare_password
    unless password.blank?
      self.password_salt = Digest::SHA1.hexdigest([Time.now, rand].join)
      self.password_hash = encrypt_password(password)
    end
  end

  def encrypt_password(pass)
    Digest::SHA1.hexdigest([pass, password_salt].join)
  end

  def forgot_password!
    generate_forgot_token
    save(:validate => false)
  end

  def generate_forgot_token
    self.forgot_token = Digest::SHA1.hexdigest([Time.now, rand].join)
  end

  def update_password(new_password, new_password_confirmation)
    if new_password == new_password_confirmation
      self.password = new_password
      self.forgot_token = nil if valid?
      save
    end
  end
  
end
