class Classroom < ApplicationRecord
  
  has_many :class_teacher, dependent: :destroy
  has_many :teachers, through: :class_teacher

end

