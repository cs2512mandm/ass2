class NexteventsController < ApplicationController
  def index
    @us_events = UsEvent.all
    @shownevent = @us_events[0]
    render JSON:UsEvent
    
  end
  
  def nextPGA
    puts params[:nextfield]
    if params[:nextfield]
      nexteventindex = params[:doesthishelp].to_i + 1
    elsif params[:backfield]
      nexteventindex = params[:doesthishelp].to_i - 1
    else 
      puts "nothing found"
    end
    @nexteventbuffer = UsEvent.find_by_id(nexteventindex)
  end
  
  def previousPGA
    nexteventindex = params[:doesthishelp].to_i - 1
    @nexteventbuffer = UsEvent.find_by_id(nexteventindex)
  end
end
