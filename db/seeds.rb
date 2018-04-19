# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup)

user_list = [
  [ "Clark Kent", "123", "just a small town boy"  ],
  [ "Harry Potter", "123", "being a wizard isn't all that magical" ],
  [ "Hermoine Granger", "123", "bubble bubble boil and trouble" ],
  [ "Busta Rhymes", "123", "whoo hah. got you all in check" ],
  [ "Ghengis Khan", "123", "attack, pillage, rinse, repeat" ],
  [ "Serena Williams", "123", "you been served" ],
  [ "R2D2", "123", "beep beep boop" ],
  [ "Tooth Fairy", "123", "its like pulling teeth" ],
  [ "Barack Obama", "123", "chillin like a villan" ],
  [ "Scooby Doo", "123", "scooby doobie doobie doo" ],
  [ "Mr.Spock", "123", "fascinating." ]
]

user_list.each do |username, password, bio|
  User.create( username: username, password: password, bio: bio)
end

post_list = [
  [ "Just moved here", "just moved here. don't know anyone or any of the local customs. would love to have some help figuring my way around.", 1 ],
  [ "Maybe I'm paranoid", "Maybe i'm paranoid. i don't know. But i always have a feeling people are out to get me. i'm always looking over my shoulder expecting someone will attack me.", 2 ],
  [ "i have too many overdue library books", "does anyone know what the overdue fees for like 50 books. i just couldn't let them go", 3 ],
  [ "whoo hah!", "When i step up in the place i step correct. whoo hah. got you all in check", 4 ],
  [ "Planning a great barbecue", "no one does barbecue better than me. and i'm putting together a great party. everyone is invited", 5 ],
  [ "Made a good herbal tea", "made my own herbal tea from my own recipe. very good and relaxing", 6 ],
  [ "im a rebel so i re-bel!", "deet doot beep boop boop beep deet doot", 7 ],
  [ "working another night again", "its tough working the night shift and being on call. every time i think i can get some rest i get another call and got to be out the door. all my friends work like one night a year. how did i get stuck with this one?", 8 ],
  [ "not doing too much these days", "these days i feel a lot more relaxed. sure the wife tells me i can't just lay around the house. but i feel like i earned it this time. even the lord rested after putting in some good work.", 9 ],
  [ "played some chess", "played a great game of chess. the whole game made a made a beautiful 4D pattern! can't understand why humans don't love logic. ", 10 ],
]

post_list.each do |title, content, user_id|
  Post.create( title: title, content: content, user_id: user_id)
end
