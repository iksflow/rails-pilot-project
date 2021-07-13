class CreateCounselings < ActiveRecord::Migration
  def change
    create_table :counselings do |t|
      t.belongs_to :school
      t.belongs_to :teacher
      t.belongs_to :student
      t.date :appointment_date
      t.timestamps
    end
  end
end
