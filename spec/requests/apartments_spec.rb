require 'rails_helper'

RSpec.describe "Apartments", type: :request do
  let(:user) { User.create(email: "testing1@example.com", password: "password", password_confirmation: "password") }
  describe "GET /index" do
    it "gets a list of apartments" do 
            apartment = user.apartments.create(
            street: "323 Flamingo Dr.",
            unit: "2c",
            city: "San Diego",
            state: "CA",
            square_footage: 1200,
            price: "3,200",
            bedrooms: 2,
            bathrooms: 1.5,
            pet: "yes",
            image: "https://www.apartments.com/images/default-source/2019-naa/high-rise-apartment6f5a30be-4c56-4064-b9fb-3eeae479b10c.tmb-featuredim.jpg?sfvrsn=c72f4a4_1",
            ac_unit: "yes",
            major_appliances: "dishwasher",
            parking: "yes",
            hoa: "no"
          )
          get "/apartments"
      apartment = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(apartment.length).to eq 1
  end
end

describe "POST /create" do
  it "creates an apartment" do 
          apartment_params = { 
            apartment: {
              user_id: user.id,
              street: "323 Flamingo Dr.",
              unit: "2c",
              city: "San Diego",
              state: "CA",
              square_footage: 1200,
              price: "3,200",
              bedrooms: 2,
              bathrooms: 1.5,
              pet: "yes",
              image: "https://www.apartments.com/images/default-source/2019-naa/high-rise-apartment6f5a30be-4c56-4064-b9fb-3eeae479b10c.tmb-featuredim.jpg?sfvrsn=c72f4a4_1",
              ac_unit: "yes",
              major_appliances: "dishwasher",
              parking: "yes",
              hoa: "no"
            }
          }

        post "/apartments", params: apartment_params
        expect(response).to have_http_status(200)
        apartment = Apartment.first
        expect(apartment.street).to eq "323 Flamingo Dr."
        expect(apartment.user_id).to eq user.id
        expect(apartment.unit).to eq "2c"
        expect(apartment.city).to eq "San Diego"
        expect(apartment.state).to eq "CA"
        expect(apartment.square_footage).to eq 1200
        expect(apartment.price).to eq "3,200"
        expect(apartment.bedrooms).to eq 2
        expect(apartment.bathrooms).to eq 1.5
        expect(apartment.pet).to eq "yes"
        expect(apartment.image).to eq "https://www.apartments.com/images/default-source/2019-naa/high-rise-apartment6f5a30be-4c56-4064-b9fb-3eeae479b10c.tmb-featuredim.jpg?sfvrsn=c72f4a4_1"
        expect(apartment.ac_unit).to eq "yes"
        expect(apartment.major_appliances).to eq "dishwasher"
        expect(apartment.parking).to eq "yes"
        expect(apartment.hoa).to eq "no"
        end
      end

      describe "POST /create" do
  it "creates an apartment" do 
          apartment_params = { 
            apartment: {
              user_id: user.id,
              street: "323 Flamingo Dr.",
              unit: "2c",
              city: "San Diego",
              state: "CA",
              square_footage: 1200,
              price: "3,200",
              bedrooms: 2,
              bathrooms: 1.5,
              pet: "yes",
              image: "https://www.apartments.com/images/default-source/2019-naa/high-rise-apartment6f5a30be-4c56-4064-b9fb-3eeae479b10c.tmb-featuredim.jpg?sfvrsn=c72f4a4_1",
              ac_unit: "yes",
              major_appliances: "dishwasher",
              parking: "yes",
              hoa: "no"
            }
          }

        post "/apartments", params: apartment_params
        expect(response).to have_http_status(200)
        apartment = Apartment.first
        expect(apartment.street).to eq "323 Flamingo Dr."
        expect(apartment.user_id).to eq user.id
        expect(apartment.unit).to eq "2c"
        expect(apartment.city).to eq "San Diego"
        expect(apartment.state).to eq "CA"
        expect(apartment.square_footage).to eq 1200
        expect(apartment.price).to eq "3,200"
        expect(apartment.bedrooms).to eq 2
        expect(apartment.bathrooms).to eq 1.5
        expect(apartment.pet).to eq "yes"
        expect(apartment.image).to eq "https://www.apartments.com/images/default-source/2019-naa/high-rise-apartment6f5a30be-4c56-4064-b9fb-3eeae479b10c.tmb-featuredim.jpg?sfvrsn=c72f4a4_1"
        expect(apartment.ac_unit).to eq "yes"
        expect(apartment.major_appliances).to eq "dishwasher"
        expect(apartment.parking).to eq "yes"
        expect(apartment.hoa).to eq "no"
        end
      end
describe "POST /create" do
  it "creates an apartment" do 
          apartment_params = { 
            apartment: {
              user_id: user.id,
              street: "323 Flamingo Dr.",
              unit: "2c",
              city: "San Diego",
              state: "CA",
              square_footage: 1200,
              price: "3,200",
              bedrooms: 2,
              bathrooms: 1.5,
              pet: "yes",
              image: "https://www.apartments.com/images/default-source/2019-naa/high-rise-apartment6f5a30be-4c56-4064-b9fb-3eeae479b10c.tmb-featuredim.jpg?sfvrsn=c72f4a4_1",
              ac_unit: "yes",
              major_appliances: "dishwasher",
              parking: "yes",
              hoa: "no"
            }
          }

        post "/apartments", params: apartment_params
        expect(response).to have_http_status(200)
        apartment = Apartment.first
        expect(apartment.street).to eq "323 Flamingo Dr."
        expect(apartment.user_id).to eq user.id
        expect(apartment.unit).to eq "2c"
        expect(apartment.city).to eq "San Diego"
        expect(apartment.state).to eq "CA"
        expect(apartment.square_footage).to eq 1200
        expect(apartment.price).to eq "3,200"
        expect(apartment.bedrooms).to eq 2
        expect(apartment.bathrooms).to eq 1.5
        expect(apartment.pet).to eq "yes"
        expect(apartment.image).to eq "https://www.apartments.com/images/default-source/2019-naa/high-rise-apartment6f5a30be-4c56-4064-b9fb-3eeae479b10c.tmb-featuredim.jpg?sfvrsn=c72f4a4_1"
        expect(apartment.ac_unit).to eq "yes"
        expect(apartment.major_appliances).to eq "dishwasher"
        expect(apartment.parking).to eq "yes"
        expect(apartment.hoa).to eq "no"
        end
      end

      describe "PATCH /update" do
        it "cannot updates an apartment without all valid attributes" do
          apartment = user.apartments.create(
            street: "323 Flamingo Dr.",
            unit: "2c",
            city: "San Diego",
            state: "CA",
            square_footage: 1200,
            price: "3,200",
            bedrooms: 2,
            bathrooms: 1.5,
            pet: "yes",
            image: "https://www.apartments.com/images/default-source/2019-naa/high-rise-apartment6f5a30be-4c56-4064-b9fb-3eeae479b10c.tmb-featuredim.jpg?sfvrsn=c72f4a4_1",
            ac_unit: "yes",
            major_appliances: "dishwasher",
            parking: "yes",
            hoa: "no"
          )
             apartment_params = { 
                  apartment: {
                    user_id: user.id,
                    street: nil,
                    unit: nil,
                    city: nil,
                    state: nil,
                    square_footage: nil,
                    price: nil,
                    bedrooms: nil,
                    bathrooms: nil,
                    pet: nil,
                    image:nil,
                    ac_unit: nil,
                    major_appliances: nil,
                    parking: nil,
                    hoa: nil
                  }
                }
      
              patch "/apartments/#{apartment.id}", params: apartment_params
              expect(response).to have_http_status(422)
              apartment = JSON.parse(response.body)
              expect(apartment["street"]).to include "can't be blank"
              expect(apartment["unit"]).to include "can't be blank"
              expect(apartment["city"]).to include "can't be blank"
              expect(apartment["state"]).to include "can't be blank"
              expect(apartment["square_footage"]).to include "can't be blank"
              expect(apartment["price"]).to include "can't be blank"
              expect(apartment["bedrooms"]).to include "can't be blank"
              expect(apartment["bathrooms"]).to include "can't be blank"
              expect(apartment["pet"]).to include "can't be blank"
              expect(apartment["image"]).to include "can't be blank"
              expect(apartment["ac_unit"]).to include "can't be blank"
              expect(apartment["major_appliances"]).to include "can't be blank"
              expect(apartment["parking"]).to include "can't be blank"
              expect(apartment["hoa"]).to include "can't be blank"   
            end
          end 
        describe "DELETE /destroy" do
          it "will delete an apartment" do
            apartment = user.apartments.create(
              street: "323 Flamingo Dr.",
              unit: "2c",
              city: "San Diego",
              state: "CA",
              square_footage: 1200,
              price: "3,200",
              bedrooms: 2,
              bathrooms: 1.5,
              pet: "yes",
              image: "https://www.apartments.com/images/default-source/2019-naa/high-rise-apartment6f5a30be-4c56-4064-b9fb-3eeae479b10c.tmb-featuredim.jpg?sfvrsn=c72f4a4_1",
              ac_unit: "yes",
              major_appliances: "dishwasher",
              parking: "yes",
              hoa: "no"
          )
          delete "/apartments/#{apartment.id}"
          expect(response).to have_http_status(200)
        end
      end
            
          
      
    end
