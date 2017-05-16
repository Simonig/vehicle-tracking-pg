
    class Waypoint < ApplicationRecord

      belongs_to :vehicle


      def create_waypoint waypoint


        if vehicle = Vehicle.find_by_vehicle_identifier(waypoint[:vehicle_identifier])
          newVehicle = vehicle
        else
          newVehicle = Vehicle.new
          newVehicle.vehicle_identifier = waypoint[:vehicle_identifier]
          newVehicle.save
        end


        newWaypoint = Waypoint.new
        newWaypoint.longitude = waypoint[:longitude]
        newWaypoint.latitude = waypoint[:latitude]
        newWaypoint.sent_at = waypoint[:sent_at].to_datetime
        newWaypoint.vehicle_identifier = waypoint[:vehicle_identifier]
        newWaypoint.vehicle = newVehicle

        puts newWaypoint.valid?
        puts newWaypoint.errors.messages

        newWaypoint.save
      end

    end
