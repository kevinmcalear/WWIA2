class Job < ApplicationRecord
  belongs_to :venue
  has_many :applications
end
