class School < ActiveRecord::Base
  has_many :counselings, dependent: :destroy
  has_many :teachers, dependent: :destroy
  has_many :students, dependent: :destroy
end
