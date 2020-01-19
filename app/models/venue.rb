class Venue < ApplicationRecord
  belongs_to :venue_admin, optional: true # allow venues to exist without an admin
  belongs_to :region
  has_many :jobs, dependent: :destroy
  has_many :applications, through: :jobs
  validates :name, presence: true
end

