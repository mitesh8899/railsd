class ClassTeacher < ApplicationRecord
  belongs_to :classroom
  belongs_to :teacher
end
