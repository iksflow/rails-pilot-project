class Student < ActiveRecord::Base
  belongs_to :school
  has_many :counselings
  has_many :teachers, :through => :counselings
end
