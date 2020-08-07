require_relative 'player'
require_relative 'game'

player1= Player.new("larry",150)

player2=Player.new("moe")

player3 =Player.new("curly",125)

player4 =Player.new("shemp", 160)

player5 =Player.new("dave", 75)

knuckleheads = Game.new("knuckleheads")

knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.add_player(player4)
knuckleheads.add_player(player5)

knuckleheads.play(3)
knuckleheads.print_stats