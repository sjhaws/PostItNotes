# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Page.create(subject: 'Our first note', author: 'Eli', body: 'Dogs are cool!')
Page.create(subject: 'Food', author: 'Jeremy', body: 'Nick, stop eating chocolate!')
Page.create(subject: 'Reminder', author: 'Steven', body: 'Remember to back up weekly')