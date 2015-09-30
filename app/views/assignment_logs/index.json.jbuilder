json.array!(@assignment_logs) do |assignment_log|
  json.extract! assignment_log, :id, :staff
  json.url assignment_log_url(assignment_log, format: :json)
end
