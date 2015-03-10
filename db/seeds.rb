

cordelia = User.create(name: "Cordelia Peters", email:"hberg140@yahoo.com", latitude: 37.7845657, longitude: -122.39753189999999, phone_number: "+14158474430")

fp = cordelia.groups.create(name: "Final Project Homies", user_id: 1)

fp.users.create(name: "Ryan Urie", latitude: 37.788, longitude: -122.3975318999999, phone_number: "+13103442422")
fp.users.create(name: "Soren Peterson", latitude: 37.783, longitude: -122.397531899999, phone_number: "+14158474430" )
fp.users.create(name: "Matt Evanoff", latitude: 37.7853, longitude: -122.39753189999992, phone_number: "+15303634560")



vegas = cordelia.groups.create(name: "Vegas Baby", description: "Going to sin city for the weekend. Keep in touch guys..", user_id: 1)

vegas.users.create(name: "Dave Desch", latitude: 36.1215, longitude: -115.1739)

vegas.users.create(name: "Vineet Rastogi", latitude: 36.121, longitude: -115.178)
vegas.users.create(name: "Peter Haugen", latitude: 36.131, longitude: -115.168)