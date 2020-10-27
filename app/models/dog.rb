class Dog < ApplicationRecord
    enum dog_size: {small: 0, medium: 1, large: 1}
    enum gender: {male: 0, female: 1}

    #Validations
    validates :name,
    format: { with:  /\A[a-zA-Z0-9 ]+\z/ }, 
    presence: true,
    length: {maximum: 15},
    presence: true

    validates :age, 
    numericality: { less_than_or_equal_to: 10,  only_integer: true },
    presence: true

    validates :gender,
    presence: true
    
    validates :description,
    presence: true,
    length: {maximum: 100}

    validates :shelter_id,
    presence: true


    # Relations
    belongs_to :shelter
    accepts_nested_attributes_for :shelter
end
