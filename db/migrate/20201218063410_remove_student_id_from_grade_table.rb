class RemoveStudentIdFromGradeTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :grades, :student_id, :string

  end
end
