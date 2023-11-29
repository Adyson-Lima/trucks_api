puts 'Gerando trucks...'

5.times do |i|
  Truck.create(
    truck_model: ["112", "113"].sample ,
    manufacturer: "scania"
    )
end

puts 'trucks gerados com sucesso!'