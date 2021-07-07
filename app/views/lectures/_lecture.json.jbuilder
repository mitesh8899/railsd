json.extract! lecture, :id, :number, :teacher_id, :classroom_id, :created_at, :updated_at
json.url lecture_url(lecture, format: :json)
