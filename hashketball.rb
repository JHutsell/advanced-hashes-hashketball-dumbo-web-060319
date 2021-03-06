require "pry"

# Write your code here!

def game_hash
  {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismack Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end

def num_points_scored(player_name)
  game_hash.each do |locations, team_data|
    team_data[:players].each do |player, stats|
      if player == player_name
        return stats[:points]
      end
    end
  end
end

def shoe_size(name)
  game_hash.each do |locations, team_data|
    team_data[:players].each do |player, stats|
      if player == name
        return stats[:shoe]
      end
    end
  end
end

def team_colors(name_of_team)
  game_hash.each do |locations, team_data|
    if name_of_team == team_data[:team_name]
      return team_data[:colors]
    end
  end
end

def team_names
  game_hash.map do |locations, team_data|
    team_data[:team_name]
  end
end

def player_numbers(name_of_team)
  jersey_numbers = []
  game_hash.each do |locations, team_data|
    if team_data[:team_name] == name_of_team
      team_data[:players].each do |player, stats|
        jersey_numbers << stats[:number]
      end 
    end
  end 
  jersey_numbers
end

def player_stats(player_name)
  game_hash.each do |locations, team_data|
    if team_data[:players].has_key?(player_name)
      return team_data[:players][player_name]
    end
  end 
end

def biggest_shoe_man
  big_shoe_man = nil
  shoe_size = nil
  game_hash.each do |locations, team_data|
    team_data[:players].each do |player, stats|
      if shoe_size == nil && big_shoe_man == nil
        big_shoe_man = player
        shoe_size = stats[:shoe]
      elsif stats[:shoe] > shoe_size
        big_shoe_man = player
        shoe_size = stats[:shoe]
      end 
    end 
  end
  big_shoe_man
end

def big_shoe_rebounds
  game_hash.each do |locations, team_data|
    return team_data[:players][biggest_shoe_man][:rebounds]
  end
end









