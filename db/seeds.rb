Dogsitter.destroy_all
City.destroy_all
Dog.destroy_all
Stroll.destroy_all
5.times do

    c = City.create(name: Faker::Address.city)
    ds = Dogsitter.create(name: Faker::Name.name, city: c)
    d = Dog.create(name: Faker::Name.name, address: Faker::Address.street_address, city: c)
    s = Stroll.new(date: Faker::Date.forward(days: 23))
    s.dogsitter = ds
    s.dog = d
    s.save
  end