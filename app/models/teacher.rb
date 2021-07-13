class Teacher < ActiveRecord::Base
  belongs_to :school
  has_many :counselings
  has_many :students, :through => :counselings
  def name_with_value
    "#{name}"
  end
end
