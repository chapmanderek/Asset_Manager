json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :staff
  json.url assignment_url(assignment, format: :json)
end
