class AddLectureNumberToClassTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :class_teachers, :lecture_number, :string
  end
end
