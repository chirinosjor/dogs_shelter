class Dog < ApplicationRecord
    enum dog_size: {small: 0, medium: 1, large: 1}
    enum gender: {male: 0, female: 1}

    has_one_attached :picture
    has_many_attached :uploads

    #Validations
    validates :name, :age, :gender, :description, :shelter_id, :picture,
    presence: true

    validates :name,
    format: { with:  /\A[a-zA-Z0-9 ]+\z/ },
    length: {maximum: 15}

    validates :age, 
    numericality: { less_than_or_equal_to: 10,  only_integer: true }
    
    validates :description,
    length: {maximum: 100}


    # Relations
    belongs_to :shelter
    accepts_nested_attributes_for :shelter
end
