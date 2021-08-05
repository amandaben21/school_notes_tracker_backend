# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


note = Note.create(subject:'History', lesson_name: "The Great Depression', date:'8/1/2020', note_entry: 'The great depression was a tough time for all Americans during the 1920's") 

reminder = Reminder.create(note_id: 1, content: 'google what life was like in the 1920s')



