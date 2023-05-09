require "rails_helper"

RSpec.describe Apartment, type: :model do

  let(:user) { User.create(email: "testing1@example.com", password: "password", password_confirmation: "password") }
  it "should have a valid street" do
    apartment = user.apartments.create(
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
    expect(apartment.errors[:street]).to include "can't be blank"
  end

  it "should have a valid unit" do
    apartment = user.apartments.create(
      street: "323 Flamingo Dr.",
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
    expect(apartment.errors[:unit]).to include "can't be blank"
  end
  it "should have a valid city" do
    apartment = user.apartments.create(
      street: "323 Flamingo Dr.",
      unit: "2c",
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
    expect(apartment.errors[:city]).to include "can't be blank"
  end

  it "should have a valid state" do
    apartment = user.apartments.create(
      street: "323 Flamingo Dr.",
      unit: "2c",
      city: "San Diego",
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
    expect(apartment.errors[:state]).to include "can't be blank"
  end

  it "should have a valid square_footage" do
    apartment = user.apartments.create(
      street: "323 Flamingo Dr.",
      unit: "2c",
      city: "San Diego",
      state: "CA",
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
    expect(apartment.errors[:square_footage]).to include "can't be blank"
  end

  it "should have a valid price" do
    apartment = user.apartments.create(
      street: "323 Flamingo Dr.",
      unit: "2c",
      city: "San Diego",
      state: "CA",
      square_footage: 1200,
      bedrooms: 2,
      bathrooms: 1.5,
      pet: "yes",
      image: "https://www.apartments.com/images/default-source/2019-naa/high-rise-apartment6f5a30be-4c56-4064-b9fb-3eeae479b10c.tmb-featuredim.jpg?sfvrsn=c72f4a4_1",
      ac_unit: "yes",
      major_appliances: "dishwasher",
      parking: "yes",
      hoa: "no"
    )
    expect(apartment.errors[:price]).to include "can't be blank"
  end

  it "should have a valid number of bedrooms" do
    apartment = user.apartments.create(
      street: "323 Flamingo Dr.",
      unit: "2c",
      city: "San Diego",
      state: "CA",
      square_footage: 1200,
      bathrooms: 1.5,
      pet: "yes",
      image: "https://www.apartments.com/images/default-source/2019-naa/high-rise-apartment6f5a30be-4c56-4064-b9fb-3eeae479b10c.tmb-featuredim.jpg?sfvrsn=c72f4a4_1",
      ac_unit: "yes",
      major_appliances: "dishwasher",
      parking: "yes",
      hoa: "no"
    )
    expect(apartment.errors[:bedrooms]).to include "can't be blank"
  end

  it "should have a valid number of bathrooms" do
    apartment = user.apartments.create(
      street: "323 Flamingo Dr.",
      unit: "2c",
      city: "San Diego",
      state: "CA",
      square_footage: 1200,
      price: "3,200",
      bedrooms: 2,
      pet: "yes",
      image: "https://www.apartments.com/images/default-source/2019-naa/high-rise-apartment6f5a30be-4c56-4064-b9fb-3eeae479b10c.tmb-featuredim.jpg?sfvrsn=c72f4a4_1",
      ac_unit: "yes",
      major_appliances: "dishwasher",
      parking: "yes",
      hoa: "no"
    )
    expect(apartment.errors[:bathrooms]).to include "can't be blank"
  end

  it "should have a valid pet" do
    apartment = user.apartments.create(
      street: "323 Flamingo Dr.",
      unit: "2c",
      city: "San Diego",
      state: "CA",
      square_footage: 1200,
      price: "3,200",
      bedrooms: 2,
      bathrooms: 1.5,
      image: "https://www.apartments.com/images/default-source/2019-naa/high-rise-apartment6f5a30be-4c56-4064-b9fb-3eeae479b10c.tmb-featuredim.jpg?sfvrsn=c72f4a4_1",
      ac_unit: "yes",
      major_appliances: "dishwasher",
      parking: "yes",
      hoa: "no"
    )
    expect(apartment.errors[:pet]).to include "can't be blank"
  end

  it "should have a valid image" do
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
      ac_unit: "yes",
      major_appliances: "dishwasher",
      parking: "yes",
      hoa: "no"
    )
    expect(apartment.errors[:image]).to include "can't be blank"
  end

  it "should have a valid ac_unit" do
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
      major_appliances: "dishwasher",
      parking: "yes",
      hoa: "no"
    )
    expect(apartment.errors[:ac_unit]).to include "can't be blank"
  end

  it "should have a valid major_appliances" do
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
      parking: "yes",
      hoa: "no"
    )
    expect(apartment.errors[:major_appliances]).to include "can't be blank"
  end

  it "should have a valid parking" do
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
      hoa: "no",
    )
    expect(apartment.errors[:parking]).to include "can't be blank"
  end

  it "should have a valid hoa" do
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
    )
    expect(apartment.errors[:hoa]).to include "can't be blank"
  end
end
