# Manages all player-related functionality
class Player
    attr_accessor :name, :piece

    # initialize
    def initialize(name = "Players", piece, board)
        # Set marker type (e.g. X or O)
        raise "Piece must be a Symbol!" unless piece.is_a?(Symbol)
        @name = name
        @piece = piece
        @board = board
    end

    # get coordinates
    def get_coordinates
        # loop infinitely
        loop do
            # ask_for_coordinates
            coords = ask_coordinates

            # IF validate_coordinates_format is true
            if validate_coordinates(coords)
                # IF piece can be placed on Board
                if @board.add(coords, @piece)
                    # break the loop
                    break
                end
            end
        end
    end


    # ask coordinates
    def ask_coordinates
        # Display message asking for coordinates
        puts "#{@name} turn, enter positin in the form (X Y):"
        # pull coordinates from command line
        gets.strip.split(" ").map(&:to_i)
    end

    # validate coordinates
    def validate_coordinates(coords)
        # UNLESS coordinates are in the proper format
        if coords.is_a?(Array) && coords.size == 2
            true
        else
            # display error message
            # Note that returning `nil` acts falsy!
            puts "Your input is invalid"
        end
    end

end
