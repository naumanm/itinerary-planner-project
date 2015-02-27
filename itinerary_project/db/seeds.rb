####   Destination Table  #####

ankara = Destination.create(place: "Ankara, Turkey")

riyadh = Destination.create(place: "Riyadh, Saudi Arabia")

tokyo = Destination.create(place: "Tokyo, JP")


####    Itinerary Table ####

honeymoon = Itinerary.create(name: "honeymoon", itin_s_date: '01/01/14', itin_r_date: '02/03/14')

mikesbigtrip = Itinerary.create(name: "mikes big trip", itin_s_date: '01/01/14', itin_r_date: '02/03/14')

businesstrip = Itinerary.create(name: "businesstrip", itin_s_date: '08/10/14', itin_r_date: '09/03/14')


####   Traveler Table ####

gpom = Traveler.create(first_name: 'Paris', last_name: 'Jones', email: 'Paris@ga.com', password: 'abc123')

mike = Traveler.create(first_name: 'Mike', last_name: 'Nauman', email: 'Mike@ga.com', password: '123abc')

squirrel = Traveler.create(first_name: 'Abraham', last_name: 'Hall', email: 'Abraham@ga.com', password: '123456')


####   Connection Table ####


