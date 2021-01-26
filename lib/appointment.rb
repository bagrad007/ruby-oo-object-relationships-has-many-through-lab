require 'pry'
class Appointment
    attr_accessor :date, :patient, :doctor
    @@all = []
    def initialize(date, patient, doctor)
        self.date = date
        self.patient = patient
        self.doctor = doctor
        @@all << self
    end
    
    def self.all
        @@all
    end
end
