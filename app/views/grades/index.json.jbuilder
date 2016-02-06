json.array!(@grades) do |grade|
  json.extract! grade, :id, :grade_number
  json.url grade_url(grade, format: :json)
end
