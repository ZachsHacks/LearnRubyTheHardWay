class SceenSelector

	def initialize(player)
		@index = 0
		@scenes = [
			Vampire.new(player),
			Zombie.new(player),
			Mirror.new(player),
			Ending.new(player) ]
	end

	def next_scene
		@current_scene = @scenes[@index]
		@index += 1
		@current_scene.enter
	end

	def game_over
		puts "You died. Game Over."
		puts "Press any key to try this room again."
		print ">"
		gets
		@current_scene.enter
	end

	def scene_name
		@current_scene.class.to_s
	end

end
