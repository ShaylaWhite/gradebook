class RenameGradesClassColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :grades, :class, :name_of_class

  end
end
