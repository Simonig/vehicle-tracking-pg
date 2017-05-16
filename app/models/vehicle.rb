class Vehicle < ApplicationRecord

  has_many :waypoints

  validates_uniqueness_of :vehicle_identifier


  def self.current_waypoint vehicle
    return Waypoint.where(vehicle_identifier: vehicle.vehicle_identifier).order('sent_at DESC').first
  end

  def get_vehicles_waypoints
    vehicles = Vehicle.all
    waypoints = []

    vehicles.each do |vehicle|
      waypoints << Vehicle.current_waypoint(vehicle)
    end

    return waypoints
  end


end
