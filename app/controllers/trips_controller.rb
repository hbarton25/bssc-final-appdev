class TripsController < ApplicationController


def newsfeed
    @trip = Trip.find(params[:id])
end

def show
end

  end
