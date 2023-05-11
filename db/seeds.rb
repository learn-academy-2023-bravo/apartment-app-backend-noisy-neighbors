user1 = User.where(email: "testing1@example.com").first_or_create(password: "password", password_confirmation: "password")

user2 = User.where(email: "testing2@example.com").first_or_create(password: "password", password_confirmation: "password")

apartments1 = [
  {
    street: "45 Peeper",
    unit: "1A",
    city: "Mobile",
    state:"Alabama",
    square_footage: 1000,
    price: "800",
    bedrooms: 2,
    bathrooms: 1,
    pet: "no",
    image: "https://images1.apartments.com/i2/mlt_CA-pPKZzMxaUvyN4Ug-iQRDv7WcOwvOSzD5Osqg/117/highland-at-spring-hill-mobile-al-building-photo.jpg",
    ac_unit: "yes",
    major_appliances: "yes: washer, dryer, refrigerator",
    parking: "assigned",
    hoa: "yes"
  }
]
apartments2 = [
  {
    street: "25 Watching",
    unit: "1B",
    city: "Mobile",
    state:"Alabama",
    square_footage: 1200,
    price: "950",
    bedrooms: 2,
    bathrooms: 2,
    pet: "yes",
    image: "https://www.apartments.com/the-gateway-mobile-al/2401eq9/",
    ac_unit: "yes",
    major_appliances: "yes: washer, dryer, refrigerator",
    parking: "assigned",
    hoa: "yes"
  }
]

apartments1.each do |apartment|
  user1.apartments.create(apartment)
  puts "creating: #{apartment}"
end

apartments2.each do |apartment|
  user2.apartments.create(apartment)
  puts "creating: #{apartment}"
end