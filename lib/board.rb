class Board
  def show_board  
		arr = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
		puts "| #{arr[0]} | #{arr[1]} | #{arr[2]} |"
		puts "|---|---|---|"
		puts "| #{arr[3]} | #{arr[4]} | #{arr[5]} |"
		puts "|---|---|---|"
		puts "| #{arr[6]} | #{arr[7]} | #{arr[8]} |"
	end
end

board = Board.new.show_board
puts board