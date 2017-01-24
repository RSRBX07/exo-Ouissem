# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all
Game.create [
    {name: "Loto du Lundi", description: "Tirage du premier lundi du mois de janvier", players:10000,draw:"1,2,3,4,5"},
    {name: "Loto du Mardi", description: "Tirage du premier Mardi du mois de janvier", players:20000,draw:"11,12,13,14,15"},
    {name: "Loto du Mercredi", description: "Tirage du premier Mercredi du mois de janvier", players:30000,draw:"21,22,23,24,25"},
    {name: "Loto du Jeudi", description: "Tirage du premier Jeudi du mois de janvier", players:40000,draw:"31,32,33,34,35"},
    {name: "Loto du Vendredi", description: "Tirage du premier Vendredi du mois de janvier", players:50000,draw:"41,42,43,44,45"}
]