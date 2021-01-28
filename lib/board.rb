class Board
	attr_accessor :arr 

	def modify_array(get)
	  if get == "1"
    @arr[0] = player.value
  	end
	  if get == "2"
		@arr[1] = player.value
	  end
	  if get == "3"
    @arr[2] = player.value
  	end
		if get == "4"
		@arr[3] = player.value
	  end
		if get == "5"
    @arr[4] = player.value
  	end
	  if get == "6"
		@arr[5] = player.value
	  end
	  if get == "7"
    @arr[6] = player.value
  	end
		if get == "8"
		@arr[7] = player.value
		end
		if get == "9"
    @arr[8] = player.value
		end
		if get != @arr
			puts "Mauvaise entrée, banane !"
		end
		return @arr
	end

end

