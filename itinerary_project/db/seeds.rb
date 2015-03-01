#### Destination Table  #####

ankara = Destination.create(place: "Ankara, Turkey", name: "funtrip", start_date: '2015/01/02', return_date: '2015/03/14')

riyadh = Destination.create(place: "Riyadh, Saudi Arabia", name: "thanksgivingtrip", start_date: '2015/01/03', return_date: '2015/03/14')

tokyo = Destination.create(place: "Tokyo, JP", name: "tour", start_date: '2015/10/04', return_date: '2015/12/14')


#### Itinerary Table ####

Itinerary.create( traveler_id: 62, destination_id: 75)

Itinerary.create(traveler_id: 63, destination_id: 76)

Itinerary.create(traveler_id: 64, destination_id: 77)


#### Traveler Table ####

gpom = Traveler.create(first_name: 'Paris', last_name: 'Jones', email: 'Paris@ga.com', password: 'abc123')

pouch = Traveler.create(first_name: 'Mike', last_name: 'Nauman', email: 'Mike@ga.com', password: '123abc')

squirrel = Traveler.create(first_name: 'Abraham', last_name: 'Hall', email: 'Abraham@ga.com', password: '123456')


#### Comment Table ####

positive = Comment.create(traveler_id: 62, comment: "gpom and squirrel are my fave traveling companions!")

negative = Comment.create(traveler_id: 63, comment: "gpom and squirrel are driving me crazy with their antics!!")

neutral = Comment.create(traveler_id: 64, comment: "gpom and squirrel are alright and I would consider traveling with them again potentially.")




# gpom.itineraries << honeymoon

# pouch.itineraries << mikesbigtrip

# squirrel.itineraries << businesstrip


