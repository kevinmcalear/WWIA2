class Traveller < User
  has_many :applications, dependent: :destroy
  has_many :reviews, through: :applications

  # active_storage + cloudinary 
  # has_one_attached :resume
end
