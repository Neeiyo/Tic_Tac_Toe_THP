class BoardCase
	attr_accessor :cases_id, :cases_value
	#TO DO : d rubocop-or :cases_value, :cases_id
	
	def initialize(case_id, case_value)
	  #TO DO : doit régler sa valeur, ainsi que son numéro de case
	  @cases_value = case_value
	  @cases_id = case_id
	  
	end
	
  end