class Patient

  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    # @doctor = doctor
    # @date = date
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.map do |doctor|
      # binding.pry
      doctor.doctor
    end
  end

end
