class VenueAdmin < User
  has_many :venues, dependent: :destroy, foreign_key: "user_id"
end
