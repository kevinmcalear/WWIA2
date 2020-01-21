class VenueAdmin < User
  has_many :venues, dependent: :destroy
end
