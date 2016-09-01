class User < ActiveRecord::Base

  # Athena - Add constraint to email: must be unique & validate (by email_validator.rb)
  validates :email, uniqueness: true
  validates :email, presence: true, email: true
  validates_confirmation_of :password

  #attr_accessor :password

  # Trung - Define model associations
  has_many :users_roles
  has_many :roles, through: :users_roles
  has_many :feedbacks
  has_many :ratings
  has_many :articles, through: :ratings



  has_secure_password
end
