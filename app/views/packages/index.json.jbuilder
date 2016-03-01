json.array!(@packages) do |package|
  json.extract! package, :id, :title, :price, :course_id, :chapter_id
  json.url package_url(package, format: :json)
end
