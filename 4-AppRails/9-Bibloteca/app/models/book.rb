class Book < ApplicationRecord
    enum state: [:estante, :prestado]
end
