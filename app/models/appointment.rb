class Appointment < ActiveRecord::Base

  default_scope           { where(state:  'TX') }

  validates_presence_of   :first_name, :last_name, :age, :dob, :city, :state, :zip, :urgency, :appt_time, :note
  validates_uniqueness_of :appt_time,  message: "This time is not available - please try another"
  validates               :age, numericality: { greater_than: 21 }
  validates               :zip, length: { is: 5 }
  validates               :urgency, inclusion: { in: %w(High Low None) }

  scope                   :ordered_time, -> { order(:appt_time) }



end
