class QueryController < ApplicationController
  def run
  end

  def results
    @finalrecords = []
    
    begin
    
      if params[:rank_submit]
        @finalrecords.push(Ranking2016.find_by_this_week(params[:idmaybe].to_i))
        @finalrecords.push(Ranking2017.find_by_this_week(params[:idmaybe].to_i))
        @finalrecords.push(Golfer.find_by_this_week(params[:idmaybe].to_i))
      
      elsif params[:name_submit]
        @finalrecords.push(Ranking2016.find_by_name(params[:name_sel]))
        @finalrecords.push(Ranking2017.find_by_name(params[:name_sel]))
        @finalrecords.push(Golfer.find_by_name(params[:name_sel]))
      end
    rescue LoadError => e
      redirect_to "query/errormessage"
    end
    
  end
end
