class Room

	def initialize(player)
		@player = player
	end


	def enter
		prompt
		choice
	end

	def options(choice_1, choice_2)

		puts "1. #{choice_1}"
		puts "2. #{choice_2}"
		print ">"

		choice = gets.chomp

		while !(choice == "1" || choice == "2")
			puts "enter '1' or '2'"
			print ">"
			choice = gets.chomp
		end

		return choice

	end

	def pretty_lines
		puts "--------------------------------------------------------"
		puts "--------------------------------------------------------"
	end

end
