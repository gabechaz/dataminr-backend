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
    User.create(name: 'agent smith', age: 36, username: 'smith', password: "123")
end
questions = Question.all
users = User.all
 answers = ['option1', 'option2']

30.times do 
   x = Answer.create(user_id: 1, question_id: 1, response: answers.shuffle.first )

end

puts 'Nice seeds!'

