
class Game
	attr_accessor :current_player 
	
	def initialize(player)
		@current_player = player

	end
	
	def welcome
		system 'clear'

  puts "      ---BIENVENUE---"
  puts ""
  puts "Dans notre MORPION DU TURFUUUUUU !!"
	gets.chomp
	puts "Joueur 1 : donne nous ton nom :"
	print "> "
	player1 = Player.new(gets.chomp.to_s, "X")	
	puts "Joueur 2 : donne nous ton nom :"
	print "> "
	player2 = Player.new(gets.chomp.to_s, "0")	
	puts ""
	puts "Bienvenue #{player1.name}, tu joueras donc contre #{player2.name} ! A toi la main, tu joues les #{player1.value}"	
	end

	def game_launch
		system 'clear'
		show_board
		puts "Indique une position pour ton #{player1.value} :"
		board_case = BoardCase.new(@current_player.value)
	end

	def perform
		welcome
	end
end