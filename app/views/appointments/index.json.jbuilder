json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :first_name, :last_name, :age, :dob, :city, :state, :zip, :urgency, :appt_time, :note
  json.url appointment_url(appointment, format: :json)
end
