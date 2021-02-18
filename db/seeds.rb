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

Question.create(creator_id: 1, question:'Is the earth flat?!', option1: 'Yes', option2: 'No', reward: 10)
Question.create(creator_id: 1, question:'Do you shop more during the daytime or the evening?', option1: 'Daytime', option2: 'Evening', reward: 10)
Question.create(creator_id: 1, question:'What is your favorite coding framework?', option1: 'Rails', option2: 'React', reward: 10)
Question.create(creator_id: 1, question:'Are you planning on buying a mattress in the next six months?', option1: 'Yes', option2: 'No', reward: 10)
Question.create(creator_id: 1, question:'What is your favorite neighborhood in Brooklyn?', option1: 'Ditmas Park', option2: 'Red Hood', reward: 10)
Question.create(creator_id: 1, question:'What is your credit card score?', option1: 'Between 300-599', option2: 'Between 600-850', reward: 10)
Question.create(creator_id: 1, question:'What career should I have?', option1: 'Piano Player', option2: 'Banker', reward: 10)
Question.create(creator_id: 1, question:'Do you like my haircut?', option1: 'Absolutely', option2: 'No', reward: 10)
Question.create(creator_id: 1, question:'Who was the best president of the United States?', option1: 'Lincoln', option2: 'JFK', reward: 10)
Question.create(creator_id: 1, question:'What is your favorite scent?', option1: 'Rosebuds', option2: 'Sharpie', reward: 10)

User.create(name: 'Agent Smith', age: 36, ethnicity: "African American", gender_identity: "Male", political_party: "Libertarian", location: "Milwaukee, WI", religion: "Christian", currency: 100, username: 'smith', password: "123", wallet: 0)
User.create(name: 'Joann', age: 65, ethnicity: "Caucasian", gender_identity: "Female", political_party: "Democratic", location: "Brooklyn, NY", religion: "Jewish", currency: 200, username: 'joann', password: "123", wallet: 0)
User.create(name: 'Tony', age: 45, ethnicity: "Caucasian", gender_identity: "Male", political_party: "Republican", location: "North Caldwell, NJ", religion: "Catholic", currency: 500, username: 'tony', password: "123", wallet: 0)
User.create(name: 'Lucille', username: 'lucy123', password: 'abc123', wallet: 0)
User.create(name: 'Maureen', username: 'moe123', password: 'abc123', wallet: 0)
User.create(name: 'Leonard', username: 'leo123', password: 'abc123', wallet: 0)
User.create(name: 'Harold', username: 'Harry123', password: 'abc123', wallet: 0)
User.create(name: 'Nadine', username: 'Naynay123', password: 'abc123', wallet: 0)
User.create(name: 'Phineas', username: 'Finn123', password: 'abc123', wallet: 0)
User.create(name: 'Gerald', username: 'Jerry123', password: 'abc123', wallet: 0)
questions = Question.all
users = User.all
answers = ['option1', 'option2']




puts 'Nice seeds!'

