class Student < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :github, presence: false
end
