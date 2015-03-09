

cordelia = User.create(name: "Cordelia Peters", email:"hberg140@yahoo.com", latitude: 37.7845657, longitude: -122.39753189999999)

fp = cordelia.groups.create(name: "Final Project Homies", user_id: 1)

fp.users.create(name: "Ryan Urie", latitude: 37.788, longitude: -122.3975318999999)
fp.users.create(name: "Soren Peterson", latitude: 37.783, longitude: -122.397531899999)
fp.users.create(name: "Matt Evanoff", latitude: 37.7853, longitude: -122.39753189999992)
