# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Record.delete_all

Record.create!(title: 'Stay What You Are', artist: 'Saves the Day', year: 2001, label: 'Vagrant', genre:'Alternative Rock', discs: 1, tracks: 11, album_art_url: 'https://upload.wikimedia.org/wikipedia/en/5/56/Saves_the_Day_-_Stay_What_You_Are_cover.jpg', user_id: 1)
Record.create!(title: 'Midnight Organ Fight', artist: 'Frightened Rabbit', year: 2008, label: 'Fat Cat', genre: 'Indie-Folk', discs: 1, tracks: 14, album_art_url: 'http://40.media.tumblr.com/tumblr_lj1uagkjPb1qzyibio1_500.jpg', user_id: 2)
