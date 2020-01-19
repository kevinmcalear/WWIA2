class Application < ApplicationRecord
  belongs_to :traveller
  belongs_to :job
  has_many :reviews
end
