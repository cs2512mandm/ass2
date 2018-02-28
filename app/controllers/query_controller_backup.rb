class QueryController < ApplicationController
  def run
  end

  def results
    @golferAttributes = ["this_week", "name", "country", "average_points", "total_points", "events_played", "points_lost_this_year", "points_gained_this_year"]
    
    @buffer = params[:tester]
    @name_buffer = params[:name_sel]
    @player = Golfer.find_by_this_week(params[:idmaybe].to_i)
    puts sql_generator(params[:sql_star_sel], params[:year_sel], params[:where_sel], params[:idmaybe])  
    
    #@records = execute_statement(sql_generator(params[:sql_star_sel], params[:year_sel], params[:where_sel], params[:idmaybe]))
    #recordsBuffer = @records[0]
    
    @finalrecords = []
    puts "man kann hier nichts sehen \n warum ist alles so kacke"
    @dafuq = Golfer.find_by_this_week(params[:idmaybe].to_i)
    puts @dafuq.name 
    if params[:year_sel].eql? "golfers, ranking2016s, ranking2017s"
      @finalrecords.push(Golfer.find_by_this_week(params[:idmaybe].to_i))
      @finalrecords.push(Ranking2017.find_by_this_week(params[:idmaybe].to_i))
      puts @finalrecords
      puts " passiert hier eigentlich etwas \n why does everything have to suck bad"
      @finalrecords.push(Ranking2016.find_by_this_week(params[:idmaybe].to_i))
      
      @helpme = Golfer.joins("INNER JOIN ranking2016s ON ranking2016s.this_week = golfers.this_week")
      
    elsif params[:year_sel].eql? "golfers"
      @finalrecords.push(Golfer.find_by_this_week(params[:idmaybe].to_i))
    elsif params[:year_sel].eql? "ranking2016s"
      @finalrecords.push(Ranking2016.find_by_this_week(params[:idmaybe].to_i))
    elsif params[:year_sel].eql? "ranking2017s"
      @finalrecords.push(Ranking2017.find_by_this_week(params[:idmaybe].to_i))
      puts " passiert hier eigentlich etwas \n why does everything have to suck bad"
    end
  end
end
