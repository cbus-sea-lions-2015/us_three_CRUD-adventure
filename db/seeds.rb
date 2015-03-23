5.times do
 Location.create!(name: Faker::Address.city)
end

species_array = ['dog','cat','bird','cow','horse','monkey','elefante']
species_array.each{ |species| Species.create(name: species)}

Animal.create!(name:  Faker::Name.name,
             species: Species.all.sample,
             location: Location.all.sample
             )
