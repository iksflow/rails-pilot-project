class Counseling < ActiveRecord::Base
  belongs_to :school
  belongs_to :teacher
  belongs_to :student
end
