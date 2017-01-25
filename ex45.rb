
require './player.rb' # player and their methods
require './room.rb' # parent room class
require './vampire.rb' # child room vampire (level 1)
require './zombie.rb' # child room zombie (level 2)
require './mirror.rb' # child room mirror (level 3)
require './ending.rb' # child room ending (ending)
require './sceen_selector.rb' # Controls room switching
require './engine.rb' # Runs game

game = Engine.new
game.run
