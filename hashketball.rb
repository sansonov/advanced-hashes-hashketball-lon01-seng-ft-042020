#require './hashketball.rb'
require 'pry'

def game_hash
  hash = {
      :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [
        { :player_name => "Alan Anderson",
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1},
          
        { :player_name => "Reggie Evans",
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7},
          
        { :player_name => "Brook Lopez",
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15},
        
        { :player_name => "Mason Plumlee",
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5},
        
        { :player_name => "Jason Terry",
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1}
          ]
    }, 
      :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [
        { :player_name => "Jeff Adrien",
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2},
          
        { :player_name => "Bismack Biyombo",
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10},
          
        { :player_name => "DeSagna Diop",
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5},
          
        { :player_name => "Ben Gordon",
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0},
          
        { :player_name => "Kemba Walker",
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12}
          ]
    }
  }
  return hash
end

def num_points_scored(nome)
#binding.pry
  game_hash.each do |location, team|
    #binding.pry
    team.each do |team_stats, player_stats|
      #binding.pry
      if team_stats == :players
      #binding.pry
        player_stats.each do |player|
        #binding.pry
          if player[:player_name] == nome
          return player[:points]
          end
        end
      end
    end
  end
end

def shoe_size(nome)
  game_hash.each do |location, team|
    #binding.pry
    team.each do |team_stats, player_stats|
      #binding.pry
      if team_stats == :players
      #binding.pry
        player_stats.each do |player|
        #binding.pry
          if player[:player_name] == nome
          return player[:shoe]
          end
        end
      end
    end
  end
end

def team_colors(nome_time)
  game_hash.each do |location, team|
    #binding.pry
    team.each do |team_stats, player_stats|
     #binding.pry
      if player_stats == nome_time
      #binding.pry
        return game_hash[location][:colors]
        #binding.pry
      end
    end
  end
end

def team_names
  teams = []
  game_hash.each do |key, value|
    #binding.pry
    teams.push(game_hash[key][:team_name])
  end
  #binding.pry
  return teams
end

def player_numbers(nome_time)
  numeros = []
  game_hash.each do |location, team|
    #binding.pry
    team.each do |team_stats, player_stats|
    #binding.pry
      if player_stats == nome_time
        #binding.pry
        team.each do |team_stats, player_stats|
          #binding.pry
          if team_stats == :players
            #binding.pry
            player_stats.each do |player|
              numeros.push(player[:number])
            end
          end
        end
      end
    end
  end
  return numeros
end
<<<<<<< HEAD
=======

def player_stats(nome)
  game_hash.each do |location, team|
    #binding.pry
    team.each do |team_stats, player_stats|
      #binding.pry
      if team_stats == :players
      #binding.pry
        player_stats.each do |player|
        #binding.pry
          if player[:player_name] == nome
            #binding.pry
            player.delete(:player_name)
            return player
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  #binding.pry
  size = []
  size_name = []
  size_rebounds = []
  game_hash.each do |location, team|
    #binding.pry
    team.each do |team_stats, player_stats|
      #binding.pry
      if team_stats == :players
        #binding.pry
        player_stats.each do |num|
        #binding.pry
        size.push(num[:shoe])
        size_name.push(num[:player_name])
        size_rebounds.push(num[:rebounds])
        #binding.pry
        end
      end
    end
  end
  a = size.index(size.max)
  return size_rebounds[a]
    #binding.pry
end
>>>>>>> fdc0d95d17e3c543b24ef48a4e34bf47af63579e

def player_stats(nome)
  game_hash.each do |location, team|
    #binding.pry
    team.each do |team_stats, player_stats|
      #binding.pry
      if team_stats == :players
      #binding.pry
        player_stats.each do |player|
        #binding.pry
          if player[:player_name] == nome
            #binding.pry
            player.delete(:player_name)
            return player
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  #binding.pry
  size = []
  size_name = []
  size_rebounds = []
  game_hash.each do |location, team|
    #binding.pry
    team.each do |team_stats, player_stats|
      #binding.pry
      if team_stats == :players
        #binding.pry
        player_stats.each do |num|
        #binding.pry
        size.push(num[:shoe])
        size_name.push(num[:player_name])
        size_rebounds.push(num[:rebounds])
        #binding.pry
        end
      end
    end
  end
  a = size.index(size.max)
  return size_rebounds[a]
    #binding.pry
end

def most_points_scored
  game_hash.each do |key, value|
    binding.pry
  
  end

end



