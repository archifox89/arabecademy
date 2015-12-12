json.array!(@courses) do |course|
  json.extract! course, :id, :title, :period, :description, :semester
  json.url course_url(course, format: :json)
end
