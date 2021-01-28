require_relative 'board'

class Show

	def show_board(board)
	  #TO DO : affiche sur le terminal l'objet de classe Board en entrée. S'active avec un Show.new.show_board(instance_de_Board)
	  puts " #{board.arr_cases[0].cases_value} | #{board.arr_cases[1].cases_value} | #{board.arr_cases[2].cases_value} "
	  puts "---|---|---"
	  puts " #{board.arr_cases[3].cases_value} | #{board.arr_cases[4].cases_value} | #{board.arr_cases[5].cases_value} "
	  puts "---|---|---"
	  puts " #{board.arr_cases[6].cases_value} | #{board.arr_cases[7].cases_value} | #{board.arr_cases[8].cases_value} "
	  

	end
  
  end