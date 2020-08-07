require_relative 'player'
require_relative 'treasure_trove'

describe Player do
    
        before do 
            $stdout = StringIO.new
        end

        before do 
            @initial_health = 150
            @player = Player.new("larry", @initial_health)
        end
  
        
    it "has a capitalaized name" do
        
        expect(@player.name).to eq("Larry")
    end

    it "has an initial health of 150" do       
        expect(@player.health).to eq 150
    end
    

    it "has a string reperesentation" do  
        @player.found_treasure(Treasure.new(:hammer,50))
        @player.found_treasure(Treasure.new(:hammer,50))

        expect(@player.to_s).to eq ("I'm Larry with a health of 150, points =100, a score of 250.")
    end

    it "computes a score as the sum of its health and points" do        
        @player.found_treasure(Treasure.new(:hammer,50))
        @player.found_treasure(Treasure.new(:hammer,50))

        expect(@player.score).to eq(250)
    end
    
    it "increases health by 15 when W00ted" do        
        @player.w00t
             
        expect(@player.health).to eq(@initial_health + 15 )
    end

    it "decreases health by 10 when blammed" do
       
        @player.blam
         
        expect(@player.health).to eq(@initial_health -10 )
    end


    context "with a player health greater than 100" do
        before do 
            @player = Player.new("larry",150)
        end

        it "is strong" do
            expect(@player).to be_strong
        end
    end   
         
    context " with a player health that equals 100" do
        before do 
            @player = Player.new("larry",100)
        end

        it " is wimpy" do 
            expect(@player).not_to be_strong
        end
    end

    it "computes points as the sum of all treasure points" do
        @player.points.should == 0
      
        @player.found_treasure(Treasure.new(:hammer, 50))
      
        @player.points.should == 50
      
        @player.found_treasure(Treasure.new(:crowbar, 400))
      
        @player.points.should == 450
      
        @player.found_treasure(Treasure.new(:hammer, 50))
      
        @player.points.should == 500
      end


end



