class Game
    attr_accessor :joueur_1, :joueur_2, :board, :current_player, :victory_counter

    def initialize
        puts "===== MORPIONS ====="
        puts "\nMerci de rentrer le nom du joueur 1:"
        print ">"
        @joueur_1 = Player.new
        
        puts "\n#{@joueur_1.name}, vous jouez les #{@joueur_1.sym}\n\n"
        puts "Merci de rentrer le nom du joueur 2:"
        print ">"
        @joueur_2 = Player.new
       
        puts "\n#{@joueur_2.name}, vous jouez les #{@joueur_2.sym}"

        @board = Board.new 

        @current_player = @joueur_1
        @victory_counter = 0
    end

    def play_turn
        puts "\n\n#{@current_player.name}, à vous de jouer !"
        puts "Où voulez vous placer votre symbole ?"
        print ">"
        @input = gets.chomp
        @board.change_case_content(@input, @current_player.sym)

        if @current_player == @joueur_1
            @current_player = @joueur_2
        elsif @current_player == @joueur_2
            @current_player = @joueur_1
        end

    end

    def new_round?
        puts "Voulez vous faire une autre partie ?"
        puts "Y - OUI"
        print ">"
        input = gets.chomp
        if input.upcase == "Y"
            @board = Board.new
            @victory_counter += 1
        end
        return @board
    end
end