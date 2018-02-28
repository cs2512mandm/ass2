class Ranking2016 < ApplicationRecord
    def whatYearIsit(id)
        year = 0
        if id < 600
            year = 2017
        elsif (id >= 600 && id < 1200)
            year = 2016
        elsif id >= 1200
            year = 2018
        end
        return year
    end
end
