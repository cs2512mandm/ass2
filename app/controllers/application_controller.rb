class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  @currentPgaIndex = 0
  
    def execute_statement(sql)
        results = ActiveRecord::Base.connection.execute(sql)
        if results.present?
            return results
        else
            return nil
        end
    end
    
    def sql_generator(sql_star, table, where, id)
        tableBuffer = []
        sql_string = "SELECT " + sql_star + " FROM "
        if table.eql? "golfers, ranking2016s, ranking2017s"
            tableBuffer = table.split
            sql_string = sql_string + table + " WHERE "
            #puts tableBuffer.size
            (0..tableBuffer.size-1).each do |i|
                if i == tableBuffer.size-1
                    sql_string = sql_string << tableBuffer[i] + "." + where + " = " + id
                else 
                    sql_string = sql_string << tableBuffer[i].sub(',', '.') + where + " = " + id + " AND "
                end
            end
            
        else 
            sql_string = sql_string + table + " WHERE " + where + " = " + id
        end
        
        return sql_string
    end
end
