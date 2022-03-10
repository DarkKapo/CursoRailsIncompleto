class Post < ApplicationRecord
    #validar los datos
    validates :title, :image_url, :content, presence: true
    before_save :verify_censura

    def verify_censura
        #Elimina la palabra spoiler
        self.content.gsub!("spoiler", "")
    end
end
