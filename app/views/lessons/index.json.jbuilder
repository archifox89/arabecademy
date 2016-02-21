json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :title, :description, :notes, :video_url, :chapter_id
  json.url lesson_url(lesson, format: :json)
end
