# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Job.destroy_all
User.destroy_all
Race.destroy_all

    user1 = User.create(
        username: "User1",
        first_name: "Paul",
        last_name: "Middle",
        email: "weakling@slayerz111.com",
        password: "123456",
    )

    user2 = User.create(
        username: "user5",
        first_name: "Demon",
        last_name: "Slayer",
        email: "slayer@slayerz111.com",
        password: "123456",
        )

    user3 = User.create(
        username: "User3",
        first_name: "Bill",
        last_name: "Clinton",
        email: "weakling5@slayerz111.com",
        password: "123456",
    )

demon = Race.create(race_name: "Demon")
vampire = Race.create(race_name: "Vampire")
orc = Race.create(race_name: "Orc")
witch = Race.create(race_name: "Witch")
human = Race.create(race_name: "Super Human")

Job.create(title: "Snake invasion", description: "Remove infestation of snakes from my house", amount: 150.00, user: user1)
Job.create(title: "Kill a vampire", description: "Kill the notorious vampire Xenos for me", amount: 300.00, user: user3)