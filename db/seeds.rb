puts "Destorying Skillsets!"
Skillset.destroy_all
puts "Destroying users..."
User.destroy_all

puts "Destroying Crimes"
Crime.destroy_all

user_1 = User.create!(username: "ashelby", email: "gipsyforlife@exemple.com", password: "123456", , description: "By the order of Peaky Blinders! I'm Thomas Shelby. Widower, father of two, World wild known entrepenur, based on Birmingham, London and Boston USA. Owner of a lot of legal and illegal enterprises, such as; horse beting, steal companys, gin and liquor distilarys, pubs and nightclubs. Also did some governance works. Elected parliament at the house of common as member of socialist party. The Leader of the Peaky 'FUCKIN' Blinders.")
user_2 = User.create!(username: "gfather1", email: "bossvito@exemple.com", password: "123456", , description: "Vito Corleone: Best known as the Godfather. The biggest mob leader of the Corleone family. Original from Sicily. Protection and money loan are the talent of the family. But if don't kiss the ring you might wake up with a horse head on your bed! Capice?")
user_3 = User.create!(username: "alfielondon", email: "heyjude@exemple.com", password: "123456", , description: "")
user_4 = User.create!(username: "say_hello_to_my_little_friend", email: "", password: "123456", , description: "")
user_5 = User.create!(username: "tucoloco", email: "cartel_tuco@exemple.com", password: "123456", , description: "")
user_6 = User.create!(username: "mustacheshelby", email: "arthur@exemple.com", password: "123456", , description: "Arthur Shelby: I shoot first, ask later. Not here to waste time. Some say I’m more brawn than brains, but I think of myself as being a healthy type of impulsive. I’m very good with all types of guns. Fists speak louder than words, and I live by it. Mess with my family, and you will have your days on this earth counted.")
user_7 = User.create!(username: "pol", email: "gipsyqueen@exemple.com", password: "123456", , description: "Polly Gray: I’m known as being the matriarch on the family - I make good decisions, and give good advise, regardless if people agree with me or not, but generally, I am very diplomatic and good at convincing people. My biggest asset is my wisdom, but if you anger me like some policemen did in the past, I might pull out my Colt 45.")
user_8 = User.create!(username: "thebridge", email: "fuckbill@exemple.com", password: "123456", , description: "Beatrix Kiddo: I’m one of the best killers of the globe, and probably the best with all types of knives, but for good rewarding killings, I will use my Hattori Hanzo sword. And oh boy, it slices limbs like butter. I was killed and reborn, like a phoenix risen from the ashes. Hire me for some good old bloodshed, like in the good old days.")
user_9 = User.create!(username: "casinoboy", email: "vivalasvegas@exemple.com", password: "123456", , description: "Danny Ocean: I just got out of prison - after 4 years, I am ready to take over the world. Experienced in working in teams, I am one of the best thieves around - diplomatic, sneaky, and most important - charming. Don’t bother contacting me for feeble work - I’m here for generous rewards only.")
user_10 = User.create!(username: "bosswife", email: "bosswife@exemple.com", password: "123456", , description: "Mia Wallace: I’m married to a big gangster known in my hometown. Aspiring to become an actress, but I get bored sometimes, so I’m looking to put my skills to good use. I like milkshakes with burgers, and I value the silence between two people.")

s1 = Skillset.create!(close_combat: rand(1..10), long_range_weapons: rand(1..10), mid_range_weapons: rand(1..10), explosives: rand(1..10), infiltration: rand(1..10), lockpicking: rand(1..10), seduction: rand(1..10), skillset_id: user_1)
s2 = Skillset.create!(close_combat: rand(1..10), long_range_weapons: rand(1..10), mid_range_weapons: rand(1..10), explosives: rand(1..10), infiltration: rand(1..10), lockpicking: rand(1..10), seduction: rand(1..10), skillset_id: user_2)
s3 = Skillset.create!(close_combat: rand(1..10), long_range_weapons: rand(1..10), mid_range_weapons: rand(1..10), explosives: rand(1..10), infiltration: rand(1..10), lockpicking: rand(1..10), seduction: rand(1..10), skillset_id: user_3)
s4 = Skillset.create!(close_combat: rand(1..10), long_range_weapons: rand(1..10), mid_range_weapons: rand(1..10), explosives: rand(1..10), infiltration: rand(1..10), lockpicking: rand(1..10), seduction: rand(1..10), skillset_id: user_4)
s5 = Skillset.create!(close_combat: rand(1..10), long_range_weapons: rand(1..10), mid_range_weapons: rand(1..10), explosives: rand(1..10), infiltration: rand(1..10), lockpicking: rand(1..10), seduction: rand(1..10), skillset_id: user_5)
s6 = Skillset.create!(close_combat: rand(1..10), long_range_weapons: rand(1..10), mid_range_weapons: rand(1..10), explosives: rand(1..10), infiltration: rand(1..10), lockpicking: rand(1..10), seduction: rand(1..10), skillset_id: user_6)
s7 = Skillset.create!(close_combat: rand(1..10), long_range_weapons: rand(1..10), mid_range_weapons: rand(1..10), explosives: rand(1..10), infiltration: rand(1..10), lockpicking: rand(1..10), seduction: rand(1..10), skillset_id: user_7)
s1 = Skillset.create!(close_combat: rand(1..10), long_range_weapons: rand(1..10), mid_range_weapons: rand(1..10), explosives: rand(1..10), infiltration: rand(1..10), lockpicking: rand(1..10), seduction: rand(1..10), skillset_id: user_8)
s9 = Skillset.create!(close_combat: rand(1..10), long_range_weapons: rand(1..10), mid_range_weapons: rand(1..10), explosives: rand(1..10), infiltration: rand(1..10), lockpicking: rand(1..10), seduction: rand(1..10), skillset_id: user_9)
s10 = Skillset.create!(close_combat: rand(1..10), long_range_weapons: rand(1..10), mid_range_weapons: rand(1..10), explosives: rand(1..10), infiltration: rand(1..10), lockpicking: rand(1..10), seduction: rand(1..10), skillset_id: user_10)

puts "skillsets created"