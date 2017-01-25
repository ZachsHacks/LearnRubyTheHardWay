class Zombie < Room

	def prompt
		pretty_lines
		puts "You walk passed the graveyard to find an abandoned road."
		puts "You try to find food, because you are getting hungry."
		puts "Your health: #{@player.health}"
		puts "..."
		puts "...."
		puts "You find a banana and eat it."
		@player.rest
		puts "Your health: #{@player.health}"
		puts "Oh shit! There's a Zombie coming!"
		puts "Hit any key to continue..."
		print ">"
		gets
	end

	def choice

		choice = options("Fight!", "Flee!")

		if choice == "1"
			fight
		else
			pretty_lines
			puts "Luckily, the Zombie was slow (Like the walking dead and not like left4dead)"
			puts "You ran away safely into an abadoned shack.\n\n"
		end

	end

	def fight
		choice = options("Punch!", "Recover.")
		pretty_lines
		puts "You get bitten by the Zombie and die."

		@player.death = true

	end


end
