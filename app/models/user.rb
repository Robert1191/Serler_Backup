class User < ActiveRecord::Base

  # Trung - Define model associations
  has_many :users_roles
  has_many :roles, through: :users_roles
  has_many :feedbacks
  has_many :ratings
  has_many :articles, through: :ratings

  #Quang attribute accessor
  attr_accessor :first_name, :middle_name, :last_name, :email, :gender, :dob, :affiliation, :is_active

end
