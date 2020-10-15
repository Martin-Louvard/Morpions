class Show


    def show_board(board)
        puts "===== MORPIONS =====\n\n"
        puts "Voici le plateau de jeu: \n\n"

        puts "    1     2     3  "
        puts "A   #{board.board_cases[0].content}  |  #{board.board_cases[1].content}  |  #{board.board_cases[2].content}  "
        puts "  -----|-----|-----"
        puts "B   #{board.board_cases[3].content}  |  #{board.board_cases[4].content}  |  #{board.board_cases[5].content}  "
        puts "  -----|-----|-----"
        puts "C   #{board.board_cases[6].content}  |  #{board.board_cases[7].content}  |  #{board.board_cases[8].content}  "

        
    end


end