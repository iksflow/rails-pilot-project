class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.references :school, index: true

      t.timestamps
    end
  end
end
