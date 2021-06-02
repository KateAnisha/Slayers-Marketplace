# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Job.destroy_all
# Race.destroy_all
SlayerInfo.destroy_all
User.destroy_all
Roles.destroy_all
Roles.create!(name: "slayer")

# Users who are slayers

user1 = User.create!(
    username: "User1",
    first_name: "Paul",
    last_name: "Smith",
    email: "weakling@slayerz-app.com",
    password: "123456",
)
 
user2 = User.create!(
    username: "Magicman101",
    first_name: "Myrddin",
    last_name: "Wyllt",
    email: "wizard_slayer@slayerz-app.com",
    password: "123456",
)
user3 = User.create!(
    username: "User3",
    first_name: "Bill",
    last_name: "Clinton",
    email: "weakling5@slayerz111.com",
    password: "123456",
)

user2.add_role :slayer


demon = Race.create!(race_name: "Demon")
vampire = Race.create!(race_name: "Vampire")
orc = Race.create!(race_name: "Orc")
witch = Race.create!(race_name: "Witch")
human = Race.create!(race_name: "Super Human")

SlayerInfo.create!(weapon: "Axe", biography: "test test test", user: user2, )
    # , race: demon)

Job.create!(title: "Snake invasion", description: "Help!!! I need someone to remove the infestation of snakes from my house. Paying a sizeable reward for anyone who can help me.", amount: 300.00, user: user1, accepted: user2)
Job.create!(title: "Kill a vampire", description: "Kill the notorious vampire Xenos for me", amount: 300.00, user: user3)
Job.create!(title: "Find my ray gun", description: "I seem to have misplaced my ray gun. Bonus reward if you manage to find it within the hour.", amount: 300.00, user: user3)
Job.create!(title: "Missing!! Lost dog", description: "My Dog ", amount: 300.00, user: user3)


@slayer_info.photo.attach(
    io: File.open(''),
    filename: 'file.png'
  )


