class Appointment
  @@all = []

  attr_reader :date, :doctor, :patient

  def initialize(patient, doctor, date)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

end
