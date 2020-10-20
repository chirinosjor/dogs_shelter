class Dog < ApplicationRecord
    enum dog_size: [:small, :medium, :large]
end
