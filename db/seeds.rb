# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Création de données fictives pour une journée date = 2022-08-22

date = Date.parse('2022-08-22')
times = (0..23).to_a.product((0..59).to_a).map { |h, m| Time.utc(date.year, date.month, date.day, h, m) }
values = (100..200).to_a.map { |v| BigDecimal("#{v}.#{rand(0..99)}") }

times.each_with_index do |time, _index|
  PotatoPrice.create(time:, value: values.sample)
end

# Cas dans le test technique date = 2022-08-23
PotatoPrice.create [{ 'time': '2022-08-23T09:00:00.000Z', 'value': '100.25' }, { 'time': '2022-08-23T09
  :00:01.800Z', 'value': '100.29' }]

puts 'Data seeded successfully!'
