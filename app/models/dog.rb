class Dog < ApplicationRecord
    enum dog_size: [:small, :medium, :large]
    enum gender: [:male, :female]

    belongs_to :shelter
    accepts_nested_attributes_for :shelter
end
