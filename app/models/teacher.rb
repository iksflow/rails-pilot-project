class Teacher < ActiveRecord::Base
  belongs_to :school

  def name_with_value
    "#{name}"
  end
end
