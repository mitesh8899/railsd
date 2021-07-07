class CreateClassTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :class_teachers do |t|
      t.references :classroom, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
