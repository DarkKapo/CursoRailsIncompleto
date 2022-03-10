class Client < ApplicationRecord
    has_many :pets, dependent: :destroy

    def petCount
        self.pets.count
    end

    def max_weight
        if self.pet_histories.count > 0
          self.pet_histories.maximum("weight")
        else
          "Mascota sin historial"
        end
    end
    
    def max_height
        if self.pet_histories.count > 0
            elf.pet_histories.maximum("heigth")
        else
            "Mascota sin historial"
        end
    end
end
