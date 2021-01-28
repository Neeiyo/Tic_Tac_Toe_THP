require 'bundler'
Bundler.require

require_relative 'lib/game.rb'
require_relative 'lib/player.rb' 

Game.new.perform

binding.pry