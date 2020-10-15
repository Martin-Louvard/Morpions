class Player
    attr_accessor :name, :sym

    @@players_counter = 0

    def initialize 
        name = gets.chomp
        
        if @@players_counter == 0
            @sym = "x".blue
            @name = name.blue
        else 
            @sym = "o".red
            @name = name.red
        end
       @@players_counter +=1
    end



end