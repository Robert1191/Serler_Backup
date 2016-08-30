class Role < ActiveRecord::Base

  # Trung - Define model associations
  has_many :users_roles
  has_many :users, through: :users_roles

end
