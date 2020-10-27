class Shelter < ApplicationRecord
  has_many :dogs

  #Validations
  validates :name, :address, :description, :capacity,
  presence: true

  validates :address, :description,
  length: {maximum: 150}

  validates :name,
  length: {maximum: 15}

  validates :capacity, 
  numericality: { less_than_or_equal_to: 500,  only_integer: true }
end
