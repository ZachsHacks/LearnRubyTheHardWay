class Engine

	def welcome
		str = '
 _______    ______   _______  _______  _          _______  _______ _________
(  ___  )  (  __  \ (  ___  )(  ____ )| \    /\  (  ____ )(  ___  )\__   __/|\     /|
| (   ) |  | (  \  )| (   ) || (    )||  \  / /  | (    )|| (   ) |   ) (   | )   ( |
| (___) |  | |   ) || (___) || (____)||  (_/ /   | (____)|| (___) |   | |   | (___) |
|  ___  |  | |   | ||  ___  ||     __)|   _ (    |  _____)|  ___  |   | |   |  ___  |
| (   ) |  | |   ) || (   ) || (\ (   |  ( \ \   | (      | (   ) |   | |   | (   ) |
| )   ( |  | (__/  )| )   ( || ) \ \__|  /  \ \  | )      | )   ( |   | |   | )   ( |
|/     \|  (______/ |/     \||/   \__/|_/    \/  |/       |/     \|   )_(   |/     \|
																																										'
		puts str

		puts "--------------------------------------------------------"
		puts "--------------------------------------------------------"
		puts "Hello there. You now have a mission. Make good decisions and pass the test."
		puts "Or fail and try again."
		puts "Please enter your name to begin..."
		print '>'
		@name = $stdin.gets.chomp
	end

	def run

		welcome

		player = Player.new
		player.name = @name
		game = SceenSelector.new(player)

		while (game.scene_name != "Ending")

			if player.death == true
				player.death = false
				game.game_over
			else
				game.next_scene
			end
		end

	end

end
