require_relative 'die'
require_relative 'player'
require_relative 'treasure_trove'

module GameTurn
    def  self.take_turn(player)
        die = Die.new    
    
        case die.roll
        when 1..2
            player.blam
        when 3..4
            puts " #{player.name} was skipped."
        else
            player.w00t
        end
       
       treasure = TreasureTrove.random
        player.found_treasure(treasure)
    end 
end

if __FILE__ == $0
    player = Player.new("Curly",125)
    GameTurn.take_turn(player)
end
