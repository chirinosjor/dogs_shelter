class Dog < ApplicationRecord
    enum dog_size: {small: 0, medium: 1, large: 1}
    enum gender: {male: 0, female: 1}

    has_one_attached :picture
    has_many_attached :uploads


    #Validations
    # validate :picture_format

    # def resize_image
    #     resized_image = MiniMagick::Image.read(picture)
    #     resized_image = resized_image.resize "500x500"
    #     v_filename = picture.filename
    #     v_content_type = picture.content_type
    #     picture.purge
    #     picture.attach(io: File.open(resized_image.path), filename:  v_filename, content_type: v_content_type)
    # end
    
    # private
    # def picture_format
    #     return unless picture.attached?
    #     if picture.blob.content_type.start_with? 'image/'
    #         if picture.blob.byte_size > 10.megabytes
    #             errors.add(:picture, 'size needs to be less than 10MB')
    #             picture.purge
    #         else
    #             resize_image
    #         end
    #     else
    #         picture.purge
    #         errors.add(:picture, 'needs to be an image')
    #     end
    # end

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
