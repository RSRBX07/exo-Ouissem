# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all
Game.create [
    {name: "Loto du Lundi", description: "Le tirage est 1,2,3,4 et 5", players:10000},
    {name: "Loto du Mardi", description: "Le tirage est 11,12,13,14 et 15", players:20000},
    {name: "Loto du Mercredi", description: "Le tirage est 21,22,23,24 et 25", players:30000},
    {name: "Loto du Jeudi", description: "Le tirage est 31,32,33,34 et 35", players:40000},
    {name: "Loto du Vendredi", description: "Le tirage est 41,42,43,44 et 45", players:50000}
]