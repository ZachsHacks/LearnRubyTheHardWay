class Mirror < Room

	def prompt
		system "clear"
		pretty_lines
		puts "You look through the shack to only find a mirror"
		puts "After staring at your reflection, you notice something odd."
		puts "The reflection is you, but an evil version of you."
		puts "It begins to step out of the mirror."
		puts "------------------------------------------"
		puts "Get ready to face your self.... Evil #{@player.name}"
		puts "------------------------------------------"
		puts "Hit any key to continue..."
		print ">"
		gets
	end

	def choice
		fight
	end

	def fight

		m = Monster.new
		pretty_lines
		puts "Evil #{@player.name}'s' health: #{m.health}"
		puts "Your health: #{@player.health}\n"

		while (m.health > 0)

			choice = options("Punch!", "Recover.")

			if choice == "1"
				if rand(4) == 2
					pretty_lines
					puts "\nYou missed!\n"
					@player.health -= 15
				else
					punch = rand(25)
					@player.fight
					m.health -= punch
				end
			else
				pretty_lines
				puts "Your recover also raised evil #{@player.name}'s health!" if m.health < 100
				m.health += 10
				if m.health > 100
					m.health = 100
				elsif m.health < 0
					m.health = 0
				end
				@player.rest
				if rand(3) == 2
					pretty_lines
					puts "\nYou were hit!\n"
					@player.health -= 15
				end
			end
			pretty_lines
			puts "Evil #{@player.name}'s' health: #{m.health}"
			puts "Your health: #{@player.health}\n"
		end
		pretty_lines
		puts "You defeated your evil self!\n\n"

	end

end
