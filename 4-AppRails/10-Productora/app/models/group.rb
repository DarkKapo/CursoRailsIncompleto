class Group < ApplicationRecord
    enum gender: [ :males, :females, :both]
    has_many :concerts

    def total_concerts
        self.concerts.count
    end
    #Muestra la fecha del debut si existe
    def debut
        concerts = self.concerts

        if !concerts.present?
            "Sin debut"
        else
            concerts.order(concert_date: :desc).first.concert_date
        end
    end
    #Muestra la sumatoria de todos los asistentes
    def audience
        concerts = self.concerts
        concerts.sum{ |x| x.audience}
    end
end
