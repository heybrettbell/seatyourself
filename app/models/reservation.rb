class Reservation < ApplicationRecord
  belongs_to :restaurant

  validates :guests, presence: true 
  validates :time, presence: true

end
