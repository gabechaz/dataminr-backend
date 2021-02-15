# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.destroy_all
User.destroy_all
Answer.destroy_all

Question.create(question:'Is the earth flat?!', option1: 'Yes', option2: 'No', reward: 100)
10.times do 
Question.create(question:'Do you shop more during the daytime or the evening?', option1: 'Daytime', option2: 'Evening', reward: 200)
end

5.times do 
   x = User.create(name: 'agent smith', age: 36, password: 'abc123', wallet: 500, gender_identity: 'male')
end



30.times do 
x = Answer.create(user_id: 1, question_id: 1, response: 'option1' )
puts x.errors.full_messages
end

puts 'Nice seeds!'

