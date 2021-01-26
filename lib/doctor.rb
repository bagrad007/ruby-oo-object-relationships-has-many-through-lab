class Doctor
    attr_accessor :name
    @@all = []
    def initialize(name)
        self.name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appt|
            appt.doctor == self
        end
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def patients
        appointments.collect do |appt|
            appt.patient
        end
    end
end