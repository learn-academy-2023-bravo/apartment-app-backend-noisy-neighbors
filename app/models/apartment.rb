class Apartment < ApplicationRecord
  belongs_to :user
  validates :street, :unit, :city, :state, :square_footage, :price, :bedrooms, :bathrooms, :pet, :image, :ac_unit, :major_appliances, :parking, :hoa, presence: true
end
