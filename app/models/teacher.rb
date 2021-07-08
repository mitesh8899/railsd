class Teacher < ApplicationRecord

  has_many :class_teachers, dependent: :destroy
  has_many :classrooms, through: :class_teacher

end
