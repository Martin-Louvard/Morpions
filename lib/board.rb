class Board
    attr_accessor :board_cases,  :moves_counter
    @@moves_counter = 0

    def initialize
        
        @board_cases = [
        @a1 = BoardCase.new,
        @a2 = BoardCase.new,
        @a3 = BoardCase.new,
        @b1 = BoardCase.new,
        @b2 = BoardCase.new,
        @b3 = BoardCase.new,
        @c1 = BoardCase.new,
        @c2 = BoardCase.new,
        @c3 = BoardCase.new ]

        @@moves_counter = 0
        
    end

   def change_case_content(board_case, new_content)
        previous_counter = @@moves_counter
        
        while previous_counter == @@moves_counter
            
            board_cases.each do |n|
                
                if n.position.to_s == board_case.upcase && n.content == " "
                    n.content = new_content
                    @@moves_counter += 1
                    puts "\nLe joueur place #{n.content} en #{n.position}\n\n"
                end
            end
                
                if previous_counter == @@moves_counter
                    puts "Il y a déjà un symbole à cet endroit ou vous avez fait une erreur de frape, veuillez entrer une case valide !"
                    print ">"
                    board_case = gets.chomp
                end

            break if previous_counter < @@moves_counter
        end    
 
   end

   def is_still_ongoing?
    
        if @@moves_counter >= 9
            return false
        elsif victory? != "empty"
            return false
        else 
            return true
        end
    end

    def victory?
        @victory = "empty"

        if @a1.content == "x".blue && @a2.content == "x".blue && @a3.content == "x".blue
            @victory = "x".blue
        elsif @b1.content == "x".blue && @b2.content == "x".blue && @b3.content == "x".blue
            @victory = "x".blue
        elsif @c1.content == "x".blue && @c2.content == "x".blue && @c3.content == "x".blue
            @victory = "x".blue
        elsif @a1.content == "x".blue && @b1.content == "x".blue && @c1.content == "x".blue
            @victory = "x".blue
        elsif @a2.content == "x".blue && @b2.content == "x".blue && @c2.content == "x".blue
            @victory = "x".blue
        elsif @a3.content == "x".blue && @b3.content == "x".blue && @c3.content == "x".blue
            @victory = "x".blue
        elsif @a1.content == "x".blue && @b2.content == "x".blue && @c3.content == "x".blue
            @victory = "x".blue
        elsif @a3.content == "x".blue && @b2.content == "x".blue && @c1.content == "x".blue
            @victory = "x".blue
        elsif @a1.content == "o".red && @a2.content == "o".red && @a3.content == "o".red
                @victory = "o".red
        elsif @b1.content == "o".red && @b2.content == "o".red && @b3.content == "o".red
            @victory = "o".red
        elsif @c1.content == "o".red && @c2.content == "o".red && @c3.content == "o".red
            @victory = "o".red
        elsif @a1.content == "o".red && @b1.content == "o".red && @c1.content == "o".red
            @victory = "o".red
        elsif @a2.content == "o".red && @b2.content == "o".red && @c2.content == "o".red
            @victory = "o".red
        elsif @a3.content == "o".red && @b3.content == "o".red && @c3.content == "o".red
            @victory = "o".red
        elsif @a1.content == "o".red && @b2.content == "o".red && @c3.content == "o".red
            @victory = "o".red
        elsif @a3.content == "o".red && @b2.content == "o".red && @c1.content == "o".red
            @victory = "o".red
        elsif @victory == "empty" && @@moves_counter >= 8
            @victory = "draw"
        end
        return @victory  

    end

end