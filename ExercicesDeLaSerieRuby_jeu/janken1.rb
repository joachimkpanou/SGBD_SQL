class Player
  def hand
    puts "faites un choix"
    puts "0:pierre , 1:feuille , 2:ciseau"
    input_hand = gets.to_i
      while true do 
        if input_hand == 0 || input_hand == 1 || input_hand == 2
          return false
        else
      puts "faites un choix"      
 			puts "0:pierre , 1:feuille , 2:ciseau"
           input_hand = gets.chomp.to_i
           return true
        end
      end
  end
end
class Enemy
  def hand
    enemy_hand = rand(3)
  end
end
class Janken
  def pon(player_hand, enemy_hand)
    janken = ["pierre", "feuille", "ciseau"]
    puts "相手の手は#{janken[enemy_hand]}です。"
    while true do
      if player_hand == enemy_hand
        puts " nobody win "
        return true
      elseif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
        puts " enemy_hand win"
        return false
      else
        puts "player_hand win"
        return false
      end
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

#next_game = true
#while next_game do
janken.pon(player.hand, enemy.hand)
#end
