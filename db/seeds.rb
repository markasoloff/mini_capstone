# product = Product.create(name: "T-Rex",
#                         price: 9000
#                         image_url: "https://goo.gl/images/v4hToS"
#                         description: "Terrible Thunder Lizard"
#                           )


category = Category.create(name: "Biped")

ProductCategory.create(category_id: category.id, product_id: 3)






# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
