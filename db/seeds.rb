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
    username: "Angel101",
    first_name: "Angel",
    last_name: "Zane",
    email: "angel@slayerz-app.com",
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
    username: "pipsqueak",
    first_name: "Mr",
    last_name: "Pipsqueak",
    email: "pip-squeak@slayerz111.com",
    password: "123456",
)

user4 = User.create!(
    username: "lucim",
    first_name: "Lucifer",
    last_name: "Morningstar",
    email: "lmorningstar@slayerz111.com",
    password: "123456",
)

user5 = User.create!(
    username: "toowooly",
    first_name: "Too",
    last_name: "Wooly",
    email: "sirwooly@slayerz111.com",
    password: "123456",
)

user6 = User.create!(
    username: "noteethy",
    first_name: "Sir No Teeth Jr.",
    last_name: "Sneezy",
    email: "teeth@slayerz111.com",
    password: "123456",
)

user7 = User.create!(
    username: "sandman",
    first_name: "Sandy",
    last_name: "Man",
    email: "sandman@slayerz111.com",
    password: "123456",
)

user8 = User.create!(
    username: "arossi",
    first_name: "Amber",
    last_name: "Rossi",
    email: "amber@slayerz111.com",
    password: "123456",
)

# Regular users
user9 = User.create!(
    username: "User3",
    first_name: "Bill",
    last_name: "Clinton",
    email: "weakling5@slayerz111.com",
    password: "123456",
)

user10 = User.create!(
    username: "simon",
    first_name: "Simon",
    last_name: "Smith",
    email: "simonsmith@slayerz111.com",
    password: "123456",
)

user11 = User.create!(
    username: "ex-spy",
    first_name: "Michael",
    last_name: "Westen",
    email: "m-westen@slayerz111.com",
    password: "123456",
)

user1.add_role :slayer
user2.add_role :slayer
user3.add_role :slayer
user4.add_role :slayer
user5.add_role :slayer
user6.add_role :slayer
user7.add_role :slayer
user8.add_role :slayer

SlayerInfo.create!(weapon: "Sword", biography: "Hello weaklings, Angel here. I'm ready to cause some mahem... I mean, rid the world of darkness.", user: user1)
SlayerInfo.create!(weapon: "Magic", biography: "Call me Merlin. Merlin was born to Hunith and Balinor in Ealdor, a small outlying village in the kingdom of Essetir. Near the end of the Great Purge, Gaius had helped Balinor, a Dragonlord, escape the slaughter of his people and arranged for him to stay with Hunith. The two fell in love, but Uther eventually discovered Balinor's whereabouts and sent men to arrest him. Balinor was forced to flee Ealdor and leave Hunith behind, unaware that she was pregnant with his child (The Last Dragonlord).

Unlike most sorcerers, Merlin was born with the ability to use magic. According to the Great Dragon, Merlin's birth had been prophesied by many cultures. The Druids, for example, referred to him as 'Emrys' (The Beginning of the End).

Life could be difficult in a village as small and isolated as Ealdor. Food was scarce and everyone was expected to pitch in and help with the harvest. Merlin had one friend growing up, William, who knew about his magic. At some point in their childhood, he used his magic to fell a tree, a stunt which nearly flattened Old Man Simmons (The Moment of Truth).", user: user2)
SlayerInfo.create!(weapon: "Axe", biography: "Yo, Pipsqueak here. Lets destory some things!!!", user: user3)
SlayerInfo.create!(weapon: "Sword", biography: "I escaped from the depths of hell to bring more Demons to earth and cause chaos.", user: user4)
SlayerInfo.create!(weapon: "My hands!", biography: "Accepting payment in the form of rum", user: user5)
SlayerInfo.create!(weapon: "Mace", biography: "Me no Teethy, me fight bad guys. Rarrr!!!!", user: user6)
SlayerInfo.create!(weapon: "Sand", biography: "I will make you go squish", user: user7)
SlayerInfo.create!(weapon: "Dagger", biography: "I've lost my Angel. Will you help me find him? Oh I guess I will need money so I can buy clothes. Contact me if you'd like to give me money.", user: user8)

Job.create!(title: "Snake invasion", description: "Help!!! I need someone to remove the infestation of snakes from my house. Paying a sizeable reward for anyone who can help me.", amount: 300.00, user: user9, accepted: "Angel")
Job.create!(title: "Kill a vampire", description: "Kill the notorious vampire Xenos for me", amount: 1000.00, user: user9)
Job.create!(title: "Find my ray gun", description: "I seem to have misplaced my ray gun. Bonus reward if you manage to find it within the hour.", amount: 700.00, user: user9)
Job.create!(title: "Missing!! Lost dog", description: "My Dog has gone missing. Please help me find him", amount: 100.00, user: user10)
Job.create!(title: "Seeking adventurer", description: "An ancient noblewoman seeks a company of an adventurer to find and explore the ancient ruins of Sisinda Keep.
    Fiendlance, an ornate shortbow engraved with runes of vengeance. It is said to be imbued with the spirit of the halfling fighter Edin Basi, who defeated the Dragon of the Withering Fen. Find it and bring it to me.", amount: 5500.00, user: user10)
Job.create!(title: "Fix Hlahyrst Tower", description: "Hlahyrst Tower: This concentric castle sits upon the banks of a river, spanned by a drawbridge. It is in disrepair, and totally deserted. Sort out the chaos and bring order to the castle.", amount: 660.00, user: user11)
Job.create!(title: "Slay a dragon", description: "A secret tunnel beneath the keep leads into a large dungeon where a dragon is rumoured to be protecting a golden egg. Destroy the dragon and bring the egg to me.", amount: 12331.00, user: user11)
Job.create!(title: "Merchant help wanted", description: "A frantic ex-adventurer named Sabeorht seeks a company of an adventure to escort a caravan of exotic goods safely to the elven village of Bere. Would prefer the assistance of a wizard.", amount: 450.00, user: user10)








