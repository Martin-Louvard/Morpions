require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
$:.unshift File.expand_path("./../view", __FILE__)
require 'board'
require 'game'
require 'board_case'
require 'player'
require 'show'

system("clear")
partie = Game.new
sleep(1)
system("clear")
while partie.board.is_still_ongoing?
    Show.new.show_board(partie.board)
    if partie.victory_counter > 0
        puts "\nVictoires: #{partie.victory_counter}"
    end
    partie.play_turn
    
    if partie.board.is_still_ongoing? == false
        puts "Victoire: #{partie.board.victory?} \n\n\n"
        partie.new_round?
    end
    system("clear")
end

