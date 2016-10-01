require 'json'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dir.foreach("./public/NFLjson/nflgame/gamecenter-json") do |file|
  game_data = File.read(file)
  sorted_game_data = JSON.parse(game_data)
  game_id = sorted_game_data.first.first

  sorted_game_data[game_id].each do |key, data|
    data.each do |key, data|
      if key == "stats"
        key.each do |stat_type, type_data|
          type_data.each do |gsis, stat_data|
            # Stat.create(
            #   stat_type: stat_type,
            #   att: stat_data["att"],
            #   cmp: stat_data["cmp"],
            #   yds: stat_data["yards"],
            #   tds: stat_data["tds"],
            #   gsis: gsis,
            #   lng: stat_data["lng"],
            #   if stat_data.include?("ints")
            #     turn_overs: stat_data["ints"]
            #   else
            #     turn_overs: null
            #   end
            )
          end
        end
      end
    end
  end
end

# PLAYER SEED DATA
# player_data = File.read("./public/NFLjson/nflgame/players.json")
# sorted_player_data = JSON.parse(player_data)
#
# sorted_player_data.each do |player_key, player_data|
#   Player.create(
#     gsis: player_data["gsis_id"],
#     first_name: player_data["first_name"],
#     last_name: player_data["last_name"],
#     birthdate: player_data["birthdate"],
#     years_pro: player_data["years_pro"],
#     college: player_data["college"]
#   )
# end
