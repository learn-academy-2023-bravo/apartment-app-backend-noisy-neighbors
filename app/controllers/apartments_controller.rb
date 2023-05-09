class ApartmentsController < ApplicationController
    def index
        apartments = Apartment.all
        render json: apartments
end

def create
    apartment = Apartment.create(apartment_params)
    if apartment.valid?
    render json: apartment
    else
    render json: apartment.errors, status: 422
    end
end

private 
def apartment_params 
    params.require(:apartment).permit(:user_id, :street, :unit, :city, :state, :square_footage, :price, :bedrooms, :bathrooms, :pet, :image, :ac_unit, :major_appliances, :parking, :hoa)
end
end


