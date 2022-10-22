# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Initial Items in the Catalog
@item_one = Item.new
@item_one.sku = "ipd"
@item_one.name = "Super iPad"
@item_one.price = 549.99
@item_one.save

@item_two = Item.new
@item_two.sku = "mbp"
@item_two.name = "MacBook Pro"
@item_two.price = 1399.99
@item_two.save

@item_three = Item.new
@item_three.sku = "atv"
@item_three.name = "Apple TV"
@item_three.price = 1399.99
@item_three.save

@item_four = Item.new
@item_four.sku = "vga"
@item_four.name = "VGA adapter"
@item_four.price = 30.00
@item_four.save