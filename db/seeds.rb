# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create a main sample user.
user = User.create!(name: "Test User", email: "user@example.com", password: "vtc@NiNHJ8w", password_confirmation: "vtc@NiNHJ8w", confirmed_at: Time.now.utc)

# Create some sample categories.
category1 = Category.create(name: "Food", icon: "https://img.icons8.com/ios/50/000000/food.png", user_id: user.id)
category2 = Category.create(name: "Clothing", icon: "https://img.icons8.com/ios/50/000000/clothes.png", user_id: user.id)
category3 = Category.create(name: "Groceries", icon: "https://cdn-icons-png.flaticon.com/512/3724/3724720.png", user_id: user.id)
category4 = Category.create(name: "Transportation", icon: "https://img.icons8.com/ios/50/000000/transportation.png", user_id: user.id)
category5 = Category.create(name: "Education", icon: "https://img.icons8.com/ios/50/000000/education.png", user_id: user.id)
category6 = Category.create(name: "Gifts", icon: "https://img.icons8.com/ios/50/000000/gift.png", user_id: user.id)
category7 = Category.create(name: "Investments", icon: "https://img.icons8.com/ios/50/000000/investment-portfolio.png", user_id: user.id)
category8 = Category.create(name: "Online transactions", icon: "https://cdn.iconscout.com/icon/premium/png-512-thumb/scan-2002149-1689082.png?f=webp&w=256", user_id: user.id)


# Create some sample expenses.
expense1 = Expense.create(name: "Pizza", amount: 10, author_id: user.id, category_ids: [category1.id, category8.id])
expense2 = Expense.create(name: "Shirt", amount: 20, author_id: user.id, category_ids: [category2.id, category6.id])
expense3 = Expense.create(name: "Carrot's & Banana's", amount: 15, author_id: user.id, category_ids: [category3.id])
expense4 = Expense.create(name: "Bus", amount: 30, author_id: user.id, category_ids: [category4.id])
expense5 = Expense.create(name: "Book", amount: 10, author_id: user.id, category_ids: [category5.id, category8.id])
expense6 = Expense.create(name: "Gift", amount: 45, author_id: user.id, category_ids: [category6.id])
expense7 = Expense.create(name: "Investment", amount: 900, author_id: user.id, category_ids: [category7.id])
expense8 = Expense.create(name: "Online transaction", amount: 85, author_id: user.id, category_ids: [category8.id])
