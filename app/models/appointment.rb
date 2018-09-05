class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def readable_datetime
    # January 12, 2016 at 3:00
    month = appointment_datetime.strftime('%B')
    date = appointment_datetime.strftime('%d')
    year = appointment_datetime.strftime('%Y')
    time = appointment_datetime.strftime('%R')
    "#{month} #{date}, #{year} at #{time}"
  end
end
