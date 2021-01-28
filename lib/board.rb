require_relative 'boardcase.rb'
require_relative 'player.rb'
require_relative 'game.rb'

class Board
	#TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
	#Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
  attr_accessor :arr_cases
  
	def initialize
	  #TO DO :
	  #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
	  #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
	  case1 = BoardCase.new(1," ")
	  case2 = BoardCase.new(2," ")
	  case3 = BoardCase.new(3," ")
	  case4 = BoardCase.new(4," ")
	  case5 = BoardCase.new(5," ")
	  case6 = BoardCase.new(6," ")
	  case7 = BoardCase.new(7," ")
	  case8 = BoardCase.new(8," ")
	  case9 = BoardCase.new(9," ")
		@arr_cases = [case1, case2, case3, case4, case5, case6, case7, case8, case9]
	end
  
	def play_turn(current_player)
		#TO DO : une méthode qui :
		#puts "Joueur 1 : donne nous ton nom :"
		#print "> "
		#@player1 = Player.new(gets.chomp.to_s, "X")
		puts "#{current_player.player_name} à toi la main !"
		puts ""
		puts "Quelle case choisis-tu ? "
		print ">"
		choice_case = gets.chomp.to_i
		if @arr_cases[choice_case-1].cases_value == " "
		@arr_cases[choice_case-1].cases_value = current_player.player_value
		Show.new.show_board(self)
		else
		puts ""
		puts "choisis une autre case ! "
		puts ""
		play_turn(current_player)
		end
	  #1) demande au bon joueur ce qu'il souhaite faire
	  #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
	end
  
	def victory?(current_player)
		if @arr_cases[0].cases_value && @arr_cases[1].cases_value && @arr_cases[2].cases_value == @current_player.player_value
			return true
		elseif @arr_cases[3].cases_value && @arr_cases[4].cases_value && @arr_cases[5].cases_value == @current_player.player_value
			return true
		elseif @arr_cases[6].cases_value && @arr_cases[7].cases_value && @arr_cases[8].cases_value == @current_player.player_value
			return true
		elseif @arr_cases[0].cases_value && @arr_cases[3].cases_value && @arr_cases[6].cases_value == @current_player.player_value
			return true
		elseif @arr_cases[1].cases_value && @arr_cases[4].cases_value && @arr_cases[7].cases_value == @current_player.player_value
			return true
		elseif @arr_cases[2].cases_value && @arr_cases[5].cases_value && @arr_cases[8].cases_value == @current_player.player_value
			return true
		elseif @arr_cases[0].cases_value && @arr_cases[4].cases_value && @arr_cases[8].cases_value == @current_player.player_value
			return true
		elseif @arr_cases[2].cases_value && @arr_cases[4].cases_value && @arr_cases[6].cases_value == @current_player.player_value
			return true
		else
			return false
		end
	  #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
	end
end
