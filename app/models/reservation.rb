class Reservation < ApplicationRecord
  belongs_to :restaurant

  validates :guests, presence: true
  validates :time, presence: true
  validates :date, presence: true
  validate :restaurant_has_capacty?

  def restaurant_has_capacty?
    unless restaurant.take_reservation(date, time, guests)
      errors.add(:base, "The restaurant is full at that time")
    end
  end

  def date_in_the_past # custom validation
  end

  def during_opening_ours # custom validation
  end 

end
