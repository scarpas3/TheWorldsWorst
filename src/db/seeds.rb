# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create the global configuration
# create! makes the object and automatically saves it to the database
# the ! means that if something goes wrong and cannot save, throw an exception
AppConfig.create!(name: 'MyApp', logo_url: 'hhhhhhh')

if Rails.env.development?

  # We're in a development mode, so making fake, insecure data is fine
  # Create two user profiles, admin and unprivledged user
  # Right now, there is no difference between the accounts
  # If your project needs it, add a boolean field to user for administrator
  admin = User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  user = User.create!(email: 'user@example.com', password: 'password', password_confirmation: 'password')
  company0 = Company.create!(id: 0) #company0 is used for association when initializing events
  monsanto = Company.create!(id: 1, name: "Monsanto", description: "Monsanto is an agricultural company known for sueing farmers for using their seeds.", industry: "Agriculture", country: "USA") 
  dupont = Company.create!(id: 2, name: "Dupont", description: "Dupont is a chemical company notorious for its work with Teflon, a chemical which was later found to be poisonous.", industry: "Chemicals", country: "USA")
  mf = Event.create!(title: "Founding", description: "Monsanto is founded in 1901",  year: 1901, company_id: 1)
  df = Event.create!(title: "Founding", description: "Dupont is founded in 1802",  year: 1802, company_id: 2)
  ao = Event.create!(title: "Agent Orange", company_id: 1)
  ao = Event.create!(title: "2019 Herbicide Lawsuit", company_id: 1)
  tl = Event.create!(title: "Teflon Invented", company_id: 2)
  df = Event.create!(title: "Teflon Lawsuit", company_id: 2)
elsif Rails.env.production?

  # We're in a production application! Stay secure! No accounts with password!

end
