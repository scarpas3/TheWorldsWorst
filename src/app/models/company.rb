class Company < ApplicationRecord
    has_many :events #model association to events

    def self.searchName(params)
        if params #if there is parameters
            where('name LIKE ?', "%#{params}%") #search where name is like params using SQL's LIKE command
        else #else if there are no parameters
            where('id != 0') #load all the companies without id of zero
        end
      end
      
end
