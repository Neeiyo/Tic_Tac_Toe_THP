class Application

  require 'bundler'
  Bundler.require
  
  require_relative 'lib/game.rb'
  require_relative 'lib/player.rb'
  require_relative 'lib/board.rb'
  require_relative 'lib/boardcase.rb'
  require_relative 'lib/show.rb'
  
  
  
  #binding.pry

    def perform
      # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
      g = Game.new
      while g.Board.victory? == false && g.count_turn != 9
        g.turn
      end
      g.game_end
    end
  
  end
  
  
  Application.new.perform