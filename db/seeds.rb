require 'json'
require 'pry'


# PLAYERSTATS SEED LOGIC
all_stats = Stat.all

all_stats.each do |single_stat|
  player_object = Player.find_by(gsis: single_stat.gsis)
  Playerstat.create(player: player_object, stat: single_stat)
end


# STAT TABLE SEED LOGIC
# Dir.foreach("./public/NFLjson/nflgame/gamecenter-json") do |file|
#   next if file == "." or file == ".."
#
#   game_data = File.read("./public/NFLjson/nflgame/gamecenter-json/" + file)
#   sorted_game_data = JSON.parse(game_data)
#
#   game_id = sorted_game_data.first.first
#
#   sorted_game_data[game_id]["home"]["stats"].each do |stat_type, type_data|
#     if stat_type == "passing" || stat_type == "rushing" || stat_type == "receiving"
#       type_data.each do |gsis, stat_data|
#         if gsis.length == 10
#           Stat.create(
#             stat_type: stat_type,
#             att: stat_data["att"],
#             cmp: stat_data["cmp"],
#             yds: stat_data["yds"],
#             tds: stat_data["tds"],
#             gsis: gsis,
#             lng: stat_data["lng"],
#             turn_overs: stat_data["ints"],
#             matchup_number: game_id
#           )
#         end
#       end
#     end
#   end
#
#   sorted_game_data[game_id]["away"]["stats"].each do |stat_type, type_data|
#     if stat_type == "passing" || stat_type == "rushing" || stat_type == "receiving"
#       type_data.each do |gsis, stat_data|
#         if gsis.length == 10
#           Stat.create(
#             stat_type: stat_type,
#             att: stat_data["att"],
#             cmp: stat_data["cmp"],
#             yds: stat_data["yds"],
#             tds: stat_data["tds"],
#             gsis: gsis,
#             lng: stat_data["lng"],
#             turn_overs: stat_data["ints"],
#             matchup_number: game_id
#           )
#         end
#       end
#     end
#   end
# end



# PLAYER SEED LOGIC
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
