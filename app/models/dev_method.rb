class DevMethod < ActiveRecord::Base

  # Trung - Define model associations
  has_many :articles_dev_methods
  has_many :articles, through: :articles_dev_methods

end
