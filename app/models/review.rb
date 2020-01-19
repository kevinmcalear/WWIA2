class Review < ApplicationRecord
  belongs_to :application
  belongs_to :user
end
