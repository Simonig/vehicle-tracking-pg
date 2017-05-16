# Vehicle Tracking App

This App shows the current position of all the Vehicles.


* Ruby version: 2.4.0

* Rails version: 5.1.1

* To run the project on localhost on port 3000 just run: "rails server"

* Services 

    Add Current Location:
    
    POST to "localhost:3000/api/v1/gps" with this data structure:
 
        {   
           "latitude": -33.408104, 
           "longitude": -70.583771, 
           "vehicle_identifier": "hhww225", 
           "sent_at": "2016-8-25 20:45:00"
        }
        
    It creates a new Position for the selected Vehicle by vehicle_identifier, 
    if there is no vehicle with the chosen identifier, creates a new vehicle.


