json.extract! course, :id, :c_name, :desc, :max_enroll, :created_at, :updated_at
json.url course_url(course, format: :json)