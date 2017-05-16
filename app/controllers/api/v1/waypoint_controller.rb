class Api::V1::WaypointController < ApplicationController

  skip_before_action :verify_authenticity_token



  def create
    @waypoint = Waypoint.new

    @waypoint.create_waypoint(params)

    render plain: :nothing, status: :ok

  end
end
