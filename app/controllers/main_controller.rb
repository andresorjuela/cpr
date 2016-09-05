class MainController < ApplicationController

  def index
    @event = Event.last
    
    if @event

      @date = @event.date.to_formatted_s(:long_ordinal) #fomats as March 13th, 2016
    else
      @date = Date.today.to_formatted_s
    end

    @calculateDate = Date.parse(@date) #turns it into ruby date object to work with
    @process = @calculateDate -= 2 #subtracts 2 days from it
    @rsvpdate = @process.strftime("%b. %d") #format as March 13th, 2016
  end

  def about
  end

  def directions
  end

  def past
  	@events = Event.first(Event.count - 1)
  end
  
end

	

