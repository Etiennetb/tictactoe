require "pry"

class Board 

	attr_accessor :boardcases

	def initialize
		
			@case1 = Boardcase.new("case 1")
			@case2 = Boardcase.new("case 2")
			@case3 = Boardcase.new("case 3")
			@case4 = Boardcase.new("case 4")
			@case5 = Boardcase.new("case 5")
			@case6 = Boardcase.new("case 6")
			@case7 = Boardcase.new("case 7")
			@case8 = Boardcase.new("case 8")
			@case9 = Boardcase.new("case 9")

			@horz = "-------------------------"
	end

	def visualise_board
		puts "\n\n Here is the board\n\n"
		puts @horz
		puts "#{@case1.instance_variable_get(:@value)} | #{@case2.instance_variable_get(:@value)} | #{@case3.instance_variable_get(:@value)}"
		puts @horz
		puts "#{@case4.instance_variable_get(:@value)} | #{@case5.instance_variable_get(:@value)} | #{@case6.instance_variable_get(:@value)}"
        puts @horz
		puts "#{@case7.instance_variable_get(:@value)} | #{@case8.instance_variable_get(:@value)} | #{@case9.instance_variable_get(:@value)}"
        puts @horz        
	end
end


	#: à l'initialisation, le plateau doit instancier 9 BoardCases. 
	#Le plateau doit s'occuper de faire le lien entre les BoardCases et le Game : 
	#il change les valeurs des BoardCases (de empty à X ou O), 
	#vérifie en fonction de la combinaison des BoardCases si un joueur enchaine trois symboles d'affichés.
#end

class Boardcase 
 	
 	attr_accessor :value
    
    def initialize(value = "")
      @value = value
    
    end
	#: un BoardCase renseigne de l'état d'une case : soit elle est vide (personne n'a joué dessus), 
	# elle a comme valeur X, soit elle a comme valeur O
end

class Player  

	attr_accessor :nameplayer, :victory

	def initialize 
		@nameplayer = nameplayer
		@victory = false

		@nameplayer = gets.chomp.to_s

	puts "Hello #{@nameplayer}"


	
    end

end

class Game 

	def initialize

		puts "Hello et bienvenue dans cette nouvelle partie de morpion.\n Une partie se joue à 2 joueurs"
		puts "Players identify yourself"

		@player1 = Player.new
		@player2 = Player.new
		@board1 = Board.new
		@board1.visualise_board
	end
	
	def before_game
		puts "Ready to play --- Y/N ?"
		answer = gets.chomp.to_s

		if answer == "Y" then puts "Lets play"
		elsif answer == "N"

			puts "Too bad ...Come another time"
		end
	end
		
	def ask_choice

		@choice = gets.chomp.to_s
	end

	

	def	play
		puts "Your turn #{@player1.instance_variable_get(:@nameplayer)}. Choose an empty case, using its number"

		@choice = gets.chomp.to_s

		if @choice == "1" && @case1(@value) == "case 1" then @case1(@value) = "-- X --" 
			binding.pry
			else puts "case not available, please try another one" 
				@player1.ask_choice

		# elsif @choice == "2" && @case2 = "case 2" return @case2 = "-- X --" 
		# 	else puts "case not available, please try another one"

		# elsif @choice == "3" && @case3 = "case 3" return @case3 = "-- X --" 
		# 	else puts "case not available, please try another one"	

		# elsif @choice == "4" && @case4 = "case 4" return @case4 = "-- X --" 
		# 	else puts "case not available, please try another one"

		# elsif @choice == "5" && @case5 = "case 5" return @case5 = "-- X --" 
		# 	else puts "case not available, please try another one"
		end	

	end	
       
end


	#: cette classe s'occupe de gérer toute la partie. À l'initialisation elle créé 2 instance de Player, et 1 instance de Board (l'instance de Board, initialise 9 instances de BoardCases). 
	# Game s'occupe de finir la partie si un joueur a gagné, de demander aux utilisateurs où ils veulent jouer à chaque tour
# end

game1 = Game.new
game1.play
#game1.before_game
#@board1.visualise_board




