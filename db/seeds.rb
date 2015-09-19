# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'json'

# Seed the database with cleaned JSON data
JSON.parse(open("#{Rails.root}/db/seed.json").read).each do |stuff|
  apps = Application.new(stuff)
  apps.save!
end
