# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Owner.destroy_all
Machine.destroy_all
Snack.destroy_all


@foxy = Owner.create!(name: 'Foxy')

@turing_machine = @foxy.machines.create!(location: 'Turing')

@candy = @turing_machine.snacks.create!(name: 'candy', price: 1.50)
@chips = @turing_machine.snacks.create!(name: 'chips', price: 1.00)
