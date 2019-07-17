# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def clear_table(table_name)
  sequence_name = table_name + '_id_seq'
  ActiveRecord::Migration.execute "TRUNCATE #{table_name} CASCADE;"
  ActiveRecord::Migration.execute "ALTER SEQUENCE #{sequence_name} RESTART;"
end

clear_table('procedures')
puts '=== Populate Procedures ==='
[
  'Face Lift',
  'Lip Implants',
  'Liposuction',
  'Butt Augmentation',
  'Botox',
  'Nose Surgery',
  'Breast Augmentation',
  'Tummy Tuck',
  'All-on-4 Dental Implants',
  'Dental Crown',
  'Clear Braces',
  'Tooth Repair',
  'AcceleDent',
  'Clear Braces',
  'Clear Correct'
].each do |title|
  Procedure.create(title: title)
end

clear_table('destinations')
puts '=== Populate Destinations ==='
[
  { country: 'USA', city: 'New York' },
  { country: 'USA', city: 'Miami' },
  { country: 'USA', city: 'Los Angeles' },
  { country: 'USA', city: 'New Orleans' },
  { country: 'USA', city: 'Boston' },
  { country: 'Mexico', city: 'Cancun' },
  { country: 'Mexico', city: 'Mexico City' },
  { country: 'Mexico', city: 'Tijuana' },
  { country: 'Dominican Republic', city: 'Santo Domingo' }
].each do |attrs|
  Destination.create(attrs)
end

clear_table('providers')
puts '=== Populate Providers ==='
[
  { first_name: 'Emilia', last_name: 'Faccio', destination: Destination.find_by(city: 'New York') },
  { first_name: 'Victoria', last_name: 'Bosco', destination: Destination.find_by(city: 'New York') },
  { first_name: 'Denis', last_name: 'Dillan', destination: Destination.find_by(city: 'New York') },
  { first_name: 'James', last_name: 'Clarke', destination: Destination.find_by(city: 'New York') },
  { first_name: 'Juan', last_name: 'Iglesias', destination: Destination.find_by(city: 'Miami') },
  { first_name: 'Milan', last_name: 'Denlio', destination: Destination.find_by(city: 'New Orleans') },
  { first_name: 'Jenna Angelina', last_name: 'Julante', destination: Destination.find_by(city: 'Mexico City') },
  { first_name: 'Emmanuelle', last_name: 'Bots', destination: Destination.find_by(city: 'Cancun') },
  { first_name: 'Santiago', last_name: 'Christopher Momo', destination: Destination.find_by(city: 'Tijuana') },
  { first_name: 'Vasirio', last_name: 'Grant', destination: Destination.find_by(city: 'Santo Domingo') }
].each do |provider|
  Provider.create(provider)
end

clear_table('procedures_providers')
puts '=== Populate ProceduresProviders ==='
[
  { provider_id: 1, procedure_id: 1, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 1, procedure_id: 2, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 1, procedure_id: 3, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 1, procedure_id: 4, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 1, procedure_id: 5, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 1, procedure_id: 6, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 1, procedure_id: 7, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 2, procedure_id: 8, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 2, procedure_id: 9, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 2, procedure_id: 10, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 2, procedure_id: 11, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 3, procedure_id: 12, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 3, procedure_id: 13, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 3, procedure_id: 14, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 3, procedure_id: 15, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 4, procedure_id: 1, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 4, procedure_id: 2, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 4, procedure_id: 3, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 5, procedure_id: 4, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 5, procedure_id: 5, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 6, procedure_id: 6, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 7, procedure_id: 7, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 7, procedure_id: 8, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 7, procedure_id: 9, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 8, procedure_id: 10, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 8, procedure_id: 11, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 9, procedure_id: 12, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 9, procedure_id: 13, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 10, procedure_id: 14, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 10, procedure_id: 15, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 10, procedure_id: 16, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 },
  { provider_id: 10, procedure_id: 17, price_low: rand(7500..20_000) / 10 * 2, price_high: rand(7500..20_000) / 10 * 5 }
].each do |attrs|
  ProceduresProvider.create(attrs)
end
