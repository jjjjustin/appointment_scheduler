class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :age, default: 0
      t.date :dob
      t.string :city
      t.string :state
      t.string :zip
      t.string :urgency
      t.datetime :appt_time
      t.text :note

      t.timestamps null: false
    end
  end
end
