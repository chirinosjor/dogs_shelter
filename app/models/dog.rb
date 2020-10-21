class Dog < ApplicationRecord
    enum dog_size: [:small, :medium, :large]
    enum gender: [:male, :female]
end
