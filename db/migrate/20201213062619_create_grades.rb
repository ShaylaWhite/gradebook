class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.string :name_of_class
      t.string :student_grade
      t.integer :student_id


      t.timestamps
    end
  end
end
