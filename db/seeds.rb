# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
ProductCategory.destroy_all
Product.destroy_all
Category.destroy_all

puts "destroyed DB"

classes = ["Signalisation", "Chasse", "Nature", "Corporatif", "Autre"]

40.times do
  product = Product.new(
    name: Faker::Commerce.color,
    image: "https://source.unsplash.com/random"
    )
  product.save!

end

15.times do
  category = Category.new(
    name: Faker::NatoPhoneticAlphabet.code_word,
    classe: classes.sample
    )
  category.save!

end

Product.all.each do |product|

  category_array = Category.all.sample(3)

  category_array.each do |category|

    link = ProductCategory.new(
      product: product,
      category: category)
    link.save!
  end
end
