class Teacher < ApplicationRecord

  has_many :class_teacher, dependent: :destroy
  has_many :classrooms, through: :class_teacher

end
