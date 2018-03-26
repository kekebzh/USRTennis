# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(name: 'Actualités')
Category.create(name: 'Championnat')
Category.create(name: 'Vie du club')
Feed.create(name: "L'équipe Tennis", url: "https://www.lequipe.fr/rss/actu_rss_Tennis.xml", description: "Flux rss tennis de l'Equipe" )