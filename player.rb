class Player

	attr_accessor :name
	attr_accessor :death
	attr_accessor :health

	def initialize
		@health = 100
		@death = false
	end

	def fight
		@health -= rand(15)
		if @health <= 0
			@health = 0
			@death = true
		end
	end

	def rest
	 @health += 10
	 if @health > 100
		 @health = 100
	 end
	end

end

class Monster

	attr_accessor :health

	def initialize
		@health = 100
	end

end
