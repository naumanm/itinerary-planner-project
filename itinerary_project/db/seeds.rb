# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)





tokyo = Destination.create(place: "Tokyo, JP")

honeymoon = Itinerary.create(name: "honeymoon", itin_s_date: '01/01/14', itin_r_date: '02/03/14')
mikesbigtrip = Itinerary.create(name: "mikes big trip", itin_s_date: '01/01/14', itin_r_date: '02/03/14')
travelers = Traveler.create(
  [
    { first_name: 'Paris'},
    { last_name: 'Jones'},
    { email: 'Abraham@ga.com'}
  ]
  )
