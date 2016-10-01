# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
test_data = {
    "00-0000045": {
        "birthdate": "5/18/1975",
        "college": "Michigan State",
        "first_name": "Flozell",
        "full_name": "Flozell Adams",
        "gsis_id": "00-0000045",
        "gsis_name": "F.Adams",
        "height": 79,
        "last_name": "Adams",
        "profile_id": 2499355,
        "profile_url": "http://www.nfl.com/player/flozelladams/2499355/profile",
        "weight": 338,
        "years_pro": 13
    },
    "00-0000108": {
        "birthdate": "12/9/1974",
        "college": "Louisville",
        "first_name": "David",
        "full_name": "David Akers",
        "gsis_id": "00-0000108",
        "gsis_name": "D.Akers",
        "height": 70,
        "last_name": "Akers",
        "number": 2,
        "profile_id": 2499370,
        "profile_url": "http://www.nfl.com/player/davidakers/2499370/profile",
        "weight": 200,
        "years_pro": 16
    },
    "00-0000121": {
        "birthdate": "5/1/1971",
        "college": "North Carolina",
        "first_name": "Ethan",
        "full_name": "Ethan Albright",
        "gsis_id": "00-0000121",
        "gsis_name": "E.Albright",
        "height": 77,
        "last_name": "Albright",
        "profile_id": 2499374,
        "profile_url": "http://www.nfl.com/player/ethanalbright/2499374/profile",
        "weight": 260,
        "years_pro": 16
    }
}

test_data.each do |player_key, player_data|
  Player.create(
    gsis: player_data[:gsis_id],
    first_name: player_data[:first_name],
    last_name: player_data[:last_name],
    birthdate: player_data[:birthdate],
    years_pro: player_data[:years_pro],
    college: player_data[:college]
  )
end
