class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :subject
      t.datetime :join_date
      t.references :school, index: true
      t.timestamps
    end
  end
end
