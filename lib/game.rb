require_relative 'board.rb'
require_relative 'player.rb'
require_relative 'show.rb'

class Game
	#TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :current_player, :status, :Board , :arr_players, :count_turn
	def initialize
	  #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
		system 'clear'
		puts "!            /// BIENVENUE DANS NOTRE FABULEUX TI-TAC-TOE \\\\\\           !"
		puts "              -((•u•))~ c'est à toi dans un instant ~((•u•))-"
		puts "                                  ....."
		puts "                                   ..."
		puts "                                    ."
		puts ""
		puts "                    Mon cher 1er concurrent, quel est ton nom ?"
	  puts ""
	  print "> "
		  player1 = Player.new(gets.chomp.to_s, "X")
			puts "                     Merveilleux, tu joueras donc les X"
			puts ""
		  puts "                    Et toi mon petit, quel est ton nom ?"
	  puts ""
	  print "> "
		player2 = Player.new(gets.chomp.to_s, "O")
		puts "                         Enchanté, tu joueras donc les O"
			puts ""
		@arr_players = [player1, player2]
		@status = "on going"
		@current_player = player1
		@Board = Board.new
		@count_turn = 0
		puts "              Et rien que pour vos yeux ébahits, voici la tant attendue..."
		puts ""
		puts "                              GRILLE DE JEU !!!"
		puts ""
		puts "Chaque joueur devra inscrire le No de la case dans laquelle il veut inscrire son symbole :"
		puts ""
		puts "                                  1 | 2 | 3 "
	  puts "                                 ---|---|---"
	  puts "                                  4 | 5 | 6 "
	  puts "                                 ---|---|---"
	  puts "                                  7 | 8 | 9 "
	end


	def turn
	  #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
	  @Board.play_turn(@current_player)
	  if @current_player == arr_players[0]
		@current_player = arr_players[1]
		
		else
			@current_player = arr_players[0]
		end
		@count_turn += 1
	end
	def new_round
	  # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
	end
  
	def game_end
	 # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
	 if @Board.victory? == true
		if @current_player == arr_players[0]
			@current_player = arr_players[1]
			
			else
				@current_player = arr_players[0]
			end
	 puts ""
	puts "Bravo tu as gagné #{@current_player.player_name} !"
	 else 
	puts ""
	puts "match nul ! "
	end  
end  
	
  end