require_relative 'pond_v2'
require_relative 'duck'
require_relative 'waterlily'

class DuckWaterLilyPond < Pond
	def new_animal(name)
		Duck.new(name)
	end

	def new_plant(name)
		WaterLily.new(name)
	end
end
