#Game engine class

require_relative 'Board'
require_relative 'Player'

class Tictactoe
    # initialize
    def initialize
        # set up the board
        @board = Board.new
	puts "Game has started"
	
        # set up the players
        @player_x = Player.new("X", :X, @board)
        @player_o = Player.new("O", :O, @board)

        # assign the starting player
        @current_player = @player_x
    end

    # play
    def play
	@board.show_board
        # loop infinitely
        loop do
            # ask for coordinates from the current player
            @current_player.get_coordinates

            # check if game is over
            break if check_game_over

            # switch players
            switch_players 
        end
    end

    # check_game_over?
    def check_game_over
        # check for victory
        # check for draw
        check_victory || check_draw
    end

    # check_victory?
    def check_victory
        # IF Board says current player's piece has
        # a winning_combination?
	@board.show_board
        if @board.winning_combination?(@current_player.piece)
            # then output a victory message
            puts "#{@current_player.name}, you win!"
	    play_again?
            true
        else
            false
        end
    end

    # check_draw?
    def check_draw
        # If Board is filled up 
        if @board.full?
            # display draw message
            puts "Draw"
	    play_again?
            true
        else
            false
        end
    end

    # switch_players
    def switch_players
        if @current_player == @player_x
            @current_player = @player_o
        else
            @current_player = @player_x
        end
    end

    def play_again?
	puts"\nPlay again?(Y/N):"
	prompt = gets.chomp
	return prompt.to_s.downcase == "y"	
    end
end

#initialize the board to play again
	t = Tictactoe.new
	t.play
