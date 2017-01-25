class Vampire < Room

	def prompt
		system "clear"
		pretty_lines
		puts "You wake up in a graveyard."
		puts "You see a figure in the distance."
	end

	def choice
		choice = options("Approach the figure.", "Run.")
		if choice == "1"
			pretty_lines
			puts "You discover that the figure is a vampire, because it has fangs with blood running down its face."
			puts "You panic, but its too late to run."

			choice = options("Try to talk to the vampire.", "Fight!")

			if choice == "2"
				fight
			else
				pretty_lines
				puts "The vampire doesn't speak English. Nice try."
				@player.death = true
			end
		else
			pretty_lines
			puts "The figure comes behinds you and kills you."
			@player.death = true
		end

	end

	def fight
		m = Monster.new
		puts "You decide to fight the monster!\n"
		puts "Monsters health: #{m.health}"
		puts "Your health: #{@player.health}\n"

		while (m.health > 0)

			choice = options("Punch!", "Recover.")

			if choice == "1"
				if rand(4) == 2
					puts "\nYou missed!\n"
					@player.health -= 15
				else
					punch = rand(25)
					@player.fight
					m.health -= punch
					if m.health < 0
						m.health = 0
					end
				end
			else
				@player.rest
			end

			puts "Monsters health: #{m.health}"
			puts "Your health: #{@player.health}\n"
		end

		puts "You defeated the vampire! Onto the next room...\n\n"
		puts "Hit any key to continue..."
		print ">"
		gets

	end

end
